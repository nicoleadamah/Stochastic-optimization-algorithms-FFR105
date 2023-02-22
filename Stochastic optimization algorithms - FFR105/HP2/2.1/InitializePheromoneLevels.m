function pheromoneLevel = InitializePheromoneLevels(numberOfCities, tau0)
    pheromoneLevel = zeros(numberOfCities) + tau0;
    pheromoneLevel = pheromoneLevel - diag(diag(pheromoneLevel));
end 