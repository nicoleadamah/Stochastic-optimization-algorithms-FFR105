% 
clc;
clear;
close all;
%% Parameters
minRange = -5;         
maxRange = 5;         
diff = maxRange-minRange;
a=0.01;
iterations = 100;    
nrParticles = 50;
globalBestF = inf;
personalBestF = inf(nrParticles,1);
w = 1.3;
wMax = 1.4;
wMin = 0.4;           
beta = 0.95;    
c1 = 2.0;         
c2 = 2.0; 

empty.PositionX = [];
empty.PositionY = [];
empty.VelocityX = [];
empty.VelocityY = [];
empty.Fxy = [];
particle = repmat(empty, nrParticles, 1);
globalBestF = inf; 
personalBestF = inf(nrParticles,1); 

for i=1:nrParticles
    r1=rand;
    r2=rand;
    
    particle(i).PositionX = minRange + r1*(diff); 
    particle(i).PositionY = minRange + r2*(diff);
    particle(i).VelocityX = ((-(diff)/2) + rand*(diff));
    particle(i).VelocityY = ((-(diff)/2) + rand*(diff));
    particle(i).Fxy = EvaluateFunction(particle(i).PositionX, particle(i).PositionY);
    
    xPersonalBest(i) = particle(i).PositionX;
    yPersonalBest(i) = particle(i).PositionY;
    
    if particle(i).Fxy < globalBestF
        xGlobalBest = particle(i).PositionX;
        yGlobalBest = particle(i).PositionY;
        globalBestF = particle(i).Fxy;
    end
end
%% PSO Main Loop
for it=1:iterations
for i=1:nrParticles
    
    r3 = rand;
    r4 = rand;
    particle(i).Fxy = EvaluateFunction(particle(i).PositionX, particle(i).PositionY);
        if particle(i).Fxy < personalBestF(i)
            xPersonalBest(i) = particle(i).PositionX;
            yPersonalBest(i) = particle(i).PositionY;
            personalBestF(i) = particle(i).Fxy;
        end
        
        if particle(i).Fxy < globalBestF
            xGlobalBest = particle(i).PositionX;
            yGlobalBest = particle(i).PositionY;
            globalBestF = particle(i).Fxy;
        end
        
        particle(i).VelocityX = CalculateVelocity(particle(i).VelocityX, xPersonalBest(i), xGlobalBest, particle(i).PositionX, w, c1, r3, r4, c2);
        particle(i).VelocityY = CalculateVelocity(particle(i).VelocityY, yPersonalBest(i), yGlobalBest, particle(i).PositionY, w, c1, r3, r4, c2);
        particle(i).PositionX = particle(i).PositionX + particle(i).VelocityX;
        particle(i).PositionY = particle(i).PositionY + particle(i).VelocityY;
        
        v = sqrt(particle(i).VelocityY^2 + particle(i).VelocityX^2);
        vFrac = v/maxRange;
         if vFrac > 1
             particle(i).VelocityX = particle(i).VelocityX*vFrac^-1;
             particle(i).VelocityY = particle(i).VelocityY*vFrac^-1;
             vFrac = 0;
         end
    end
    w = w*beta;
    w = max(w,wMin);
end
%% Print
fprintf('Minima x-coordinate=%.6f\n',xGlobalBest)
fprintf('Minima y-coordinate=%.6f\n',yGlobalBest)
fprintf('Fxy=%.55f\n',globalBestF)
%% Plot
x = linspace(minRange, maxRange);
y = linspace(minRange, maxRange);
[X, Y] = meshgrid(x,y);
z = EvaluateFunction(X,Y);
figure(1)
hold on
contour(X,Y,z,nrParticles, 'HandleVisibility','off') %contour plot
plot(xGlobalBest, yGlobalBest,'*' ,'MarkerSize',10, 'MarkerEdgeColor', 'b')
title('Contour Plot')
hold on
figure(2)
plot3(X,Y,log(z + a)); %plot of calculated minima
title('The function log(a + f (x, y)) Plot')
figure(3)
hold on
% plot with all the minimas
contour(X,Y,z,nrParticles, 'HandleVisibility','off')
c = [3.0000, 2.0000; -3.779310, -3.283186; 3.584428, -1.848127; -2.805118, 3.131313];
plot(c(1,1), c(1,2), '*', "MarkerFaceColor", "b")
plot(c(2,1), c(2,2), '*', "MarkerFaceColor", "b")
plot(c(3,1), c(3,2), '*', "MarkerFaceColor", "b")
plot(c(4,1), c(4,2), '*', "MarkerFaceColor", "b")
legend("Min 1", "Min 2", "Min 3", "Min 4")
title("Final plot of the four minimas")
xlabel("x")
ylabel("y")
