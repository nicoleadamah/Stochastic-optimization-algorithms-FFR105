function deltaPheromoneLevel = ComputeDeltaPheromoneLevels(pathCollection,pathLengthCollection);
    [nrPaths, nrCities] = size(pathCollection);
    deltaPheromoneLevel = zeros(nrCities, nrCities);
    
    for i = 1:nrPaths
       deltaTau = zeros(nrCities, nrCities);
       path = pathCollection(i, :);   
       
       for j = 1:nrCities-1
           pathStart = path(j);
           pathEnd = path(j + 1);
           deltaTau(pathEnd, pathStart) = 1 / pathLengthCollection(i);
       end
       deltaTau(path(1), path(nrCities)) = 1 / pathLengthCollection(i);      
       deltaPheromoneLevel = deltaPheromoneLevel + deltaTau;
       
    end
end
