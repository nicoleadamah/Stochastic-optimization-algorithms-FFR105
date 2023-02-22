%testtruck 
function [v, distance] = testTruck(slope, dataSet, wIH, wHO)
g = 9.82;       %m/s^2
xMax = 1000;    %m
deltaT = 0.2;   %s
TMax = 750;     %K
M = 20000;      %kg
tau = 30;       %s
Ch = 40;        %K/s
Tamb = 283;     %K
Cb = 3000;      %N
vMax = 25;      %m/s
vMin = 1;       %m/s
alphaMax = 10;  %degrees
Feb = Cb*[7, 5, 4, 3, 2.5, 2, 1.6, 1.4, 1.2, 1];

%Starting values
v(1) = 20;      %m/s
x = 0;          %m
gear = 7;
Tb = 500;       %K
deltaTb = Tb - Tamb;
alpha = GetSlopeAngle(x,slope,dataSet);
    
nHidden = size(wIH,1);
nOut = size(wHO,1);
hiddenNeurons = zeros(nHidden,1);
output = zeros(nOut,1);
vIndex = 1;

input=[v/vMax, alpha/alphaMax, Tb/TMax];
while x < xMax
    for i = 1:nHidden
        s = 0;
        
        for j = 1:(length(input))
            s = s + wIH(i,j)*input(j);
        end
        hiddenNeurons(i) = Sigmoid(s);
    end
    for i = 1:nOut
        s = 0;
        for j = 1:nHidden
            s = s + wHO(i,j)*hiddenNeurons(j);
        end
        output(i) = Sigmoid(s);
    end
    Pp = output(1);
    deltaGear = output(2);
    if mod(vIndex, 10) == 0     %Changes gear every two seconds
        gear = gear + fix(deltaGear);
    end
    
    
    if Pp < 0.01
        dDeltaTb = deltaTb/tau;
    else
        dDeltaTb = Ch * Pp;
    end
    deltaTb = deltaTb + dDeltaTb;
    Tb = Tamb + deltaTb;

    distance(vIndex) = x;
    x = x + v(vIndex) * deltaT;
    alpha = GetSlopeAngle(x,slope,dataSet);
    deltaV = deltaT * (g*sind(alpha) - g*Pp/20 - Feb(gear)/M);
    
    v(vIndex + 1) = v(vIndex) + deltaV;
    

    input=[v(vIndex)/vMax, alpha/alphaMax, Tb/TMax];
    if (max(input) > 1)
        break;
    elseif (v(vIndex) < vMin)
        break;
    elseif (alpha < 0) 
        break;
    end
    vIndex= vIndex + 1;
end