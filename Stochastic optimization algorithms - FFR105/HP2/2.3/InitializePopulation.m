% initialize

function population = InitializePopulation(populationSize,chromosome);
    nGenes = length(chromosome);
    population = zeros(populationSize, nGenes);
    for i = 1:populationSize
        for j = 1:nGenes
            population(i,j) = chromosome(j);
        end
    end
end