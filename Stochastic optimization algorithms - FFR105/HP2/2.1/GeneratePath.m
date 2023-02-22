function path = GeneratePath(pheromoneLevel, visibility, alpha, beta)
    nrCities = length(pheromoneLevel);
    path = randperm(nrCities,1);
    for i = 2:nrCities
            tabuList = path;
            nextNode = GetNode(pheromoneLevel, visibility, alpha, beta,tabuList); 
            path = [path, nextNode];
    end
    
end