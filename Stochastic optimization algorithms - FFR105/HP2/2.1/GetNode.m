function nextNode = GetNode(pheromoneLevel, visibility, alpha, beta,tabuList);
    nrCities = length(pheromoneLevel);
    currentNode = tabuList(end);
    nodesLeft = setdiff(1:nrCities, tabuList); 
    numerator = (pheromoneLevel(nodesLeft, currentNode) .^ alpha) .* (visibility(nodesLeft, currentNode) .^ beta);
    denominator = sum(numerator);  
    p = numerator / denominator;
    cumulativeP = cumsum(p);
    cumulativeP = 1 / sum(p) * cumulativeP;
    %Roulette wheel selection
    r = rand;
    for j = 1:length(p)
        if ((cumulativeP(j) > r))
            break
        end
    end
    nextNode = nodesLeft(j);

end
