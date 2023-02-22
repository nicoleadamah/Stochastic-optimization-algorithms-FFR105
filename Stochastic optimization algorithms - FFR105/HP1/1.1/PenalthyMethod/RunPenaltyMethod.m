%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Penalty method for minimizing
%
% (x1-1)^2 + 2(x2-2)^2, s.t.
%
% x1^2 + x2^2 - 1 <= 0.
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% The values below are suggestions - you may experiment with
% other values of eta and other (increasing) sequences of the
% µ parameter (muValues).

close all
clear all 
clc 

muValues = [1 10 100 1000];
x1 = zeros(size(muValues, 1),1);
x2 = zeros(size(muValues, 1),1);
mux = zeros(size(muValues, 1),1);
eta = 0.0001;
xStart =  [1,2];
gradientTolerance = 1E-6;

for i = 1:length(muValues)
 mu = muValues(i);
 x = RunGradientDescent(xStart,mu,eta,gradientTolerance);
 fprintf('mu = %d   x(1) = %.4f, x(2) = %.4f\n',mu,x(1),x(2))
 x1(i) = x(1);
 x2(i) = x(2);
 mux(i) = mu;
 figure(1)
 plot(mux, x1);
 hold on
 scatter(mux,x1);
 ylim([0 1]);
 
 
 figure(2)
 plot(mux, x2);
 hold on
 scatter(mux,x2);
 ylim([0 2]);

end


