%mutate
function mutatedTruck = Mutate(truck, mutationProbability);
    nGenes = size(truck,2);
    mutatedTruck = truck;
    for j = 1:nGenes
        r = rand;
        if (r < mutationProbability)
            mutatedTruck(j) = 1-truck(j);
        end
    end
end