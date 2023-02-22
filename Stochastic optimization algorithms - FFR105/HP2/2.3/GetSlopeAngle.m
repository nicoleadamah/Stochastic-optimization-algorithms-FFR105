%% This file provides the FORMAT you should use for the
%% slopes in HP2.3. x denotes the horizontal distance
%% travelled (by the truck) on a given slope, and
%% alpha measures the slope angle at distance x
%%
%% iSlope denotes the slope index (i.e. 1,2,..10 for the
%% training set etc.)
%% iDataSet determines whether the slope under consideration
%% belongs to the training set (iDataSet = 1), validation
%% set (iDataSet = 2) or the test set (iDataSet = 3).
%%
%% Note that the slopes given below are just EXAMPLES.
%% Please feel free to implement your own slopes below,
%% as long as they fulfil the criteria given in HP2.3.
%%
%% You may remove the comments above and below, as they
%% (or at least some of them) violate the coding standard 
%%  a bit. :)
%% The comments have been added as a clarification of the 
%% problem that should be solved!).

% 
% function alpha = GetSlopeAngle(x, iSlope, iDataSet)
% 
% if (iDataSet == 1)                                % Training
%  if (iSlope == 1) 
%    alpha = 4 + sin(x/100) + cos(sqrt(2)*x/50);    % You may modify this!
% 
%  %%
%  %% Insert the remaining 8 training set slopes here
%  %% 
% 
%  elseif (iSlope== 10)
%    alpha = 3 + 2*sin(x/50) + cos(sqrt(2)*x/100);  % You may modify this!
%  end 
% elseif (iDataSet == 2)                            % Validation
%  if (iSlope == 1) 
%    alpha = 6 - sin(x/100) + cos(sqrt(3)*x/50);    % You may modify this!
% 
%  %%
%  %% Insert the remaining 3 validation set slopes here
%  %% 
% 
%  elseif (iSlope == 5) 
%    alpha = 5 + sin(x/50) + cos(sqrt(5)*x/50);    % You may modify this!
%  end 
% elseif (iDataSet == 3)                           % Test
%  if (iSlope == 1) 
%    alpha = 6 - sin(x/100) - cos(sqrt(7)*x/50);   % You may modify this!
% 
%  %%
%  %% Insert the remaining 3 test set slopes here
%  %% 
% 
%  elseif (iSlope == 5)
%    alpha = 4 + (x/1000) + sin(x/70) + cos(sqrt(7)*x/100); % You may modify this!
%  end
% end

function alpha = GetSlopeAngle(x, iSlope, iDataSet)

if (iDataSet == 1)                                % Training
 if (iSlope == 1) 
   alpha = 4 + sin(x/100) + cos(sqrt(2)*x/50);    % You may modify this!

 elseif (iSlope== 2)
   alpha = 5 + 2*sin(x/60) + 2*cos(sqrt(2)*x/130);
 elseif (iSlope== 3)
   alpha = 4 + 2*sin(x/50) - cos(sqrt(5)*x/460);
 elseif (iSlope== 4)
   alpha = 5 - 2*sin(x/90) + cos(sqrt(9)*x/590);
 elseif (iSlope== 5)
   alpha = 2 + sin(x/40) + cos(x/150);
 elseif (iSlope== 6)
   alpha = 3 + 2*sin(x/90) - cos(sqrt(10)*x/580);
 elseif (iSlope== 7)
   alpha = 7 + sin(x/30) + cos(sqrt(8)*x/360);
 elseif (iSlope== 8)
   alpha = 4 - 2*sin(x/360) + cos(sqrt(5)*x/890);
 elseif (iSlope== 9)
   alpha = 6 + sin(x/80) + 2*cos(sqrt(3)*x/350);

 elseif (iSlope== 10)
   alpha = 3 + 2*sin(x/50) + cos(sqrt(2)*x/100);  % You may modify this!
 end 
elseif (iDataSet == 2)                            % Validation
 if (iSlope == 1) 
   alpha = 6 - sin(x/100) + cos(sqrt(3)*x/50);    % You may modify this!

 elseif (iSlope == 2) 
   alpha = 5 + sin(x/450) + 2*cos(sqrt(8)*x/160); 
 elseif (iSlope == 3) 
   alpha = 5 - 2*sin(x/250) + cos(sqrt(7)*x/170); 
 elseif (iSlope == 4) 
   alpha = 3 + sin(x/60) + cos(sqrt(2)*x/90); 

 elseif (iSlope == 5) 
   alpha = 5 + sin(x/50) + cos(sqrt(5)*x/50);    % You may modify this!
 end 
elseif (iDataSet == 3)                           % Test
 if (iSlope == 1) 
   alpha = 6 - sin(x/100) - cos(sqrt(7)*x/50);   % You may modify this!

 elseif (iSlope == 2)
   alpha = 2 + (x/300) + sin(x/50) + cos(sqrt(4)*x/250); % You may modify this!
 elseif (iSlope == 3)
   alpha = 2 + (x/500) + sin(x/90) + cos(sqrt(14)*x/80); % You may modify this!
 elseif (iSlope == 4)
   alpha = 5 + (x/800) + sin(x/10) + cos(sqrt(8)*x/20); % You may modify this!

 elseif (iSlope == 5)
   alpha = 4 + (x/1000) + sin(x/70) + cos(sqrt(7)*x/100); % You may modify this!
 end
end