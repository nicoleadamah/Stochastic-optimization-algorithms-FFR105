close
clear 
clc
bestPath1 = [32 50 29 47 30 34 42 28 48 33 38 45 27 39 44 40 37 49 36 8 16 ...
            21 19 20 11 3 6 15 12 2 24 17 22 14 7 23 4 10 9 13 5 1 18 26 25 ... 
            31 43 35 41 46];        
        
cityLocation = LoadCityLocations();
nrCities = length(cityLocation);
range = [0 20 0 20];
tspFigure = InitializeTspPlot(cityLocation, range);
connection = InitializeConnections(cityLocation);
pathLength1 = GetPathLength(bestPath1,cityLocation);
PlotPath(connection,cityLocation,bestPath1);
xlabel('x')
ylabel('y')
title('Plot of the best path length', 'FontSize', 16)
disp(sprintf('path length = %.5f',pathLength1))