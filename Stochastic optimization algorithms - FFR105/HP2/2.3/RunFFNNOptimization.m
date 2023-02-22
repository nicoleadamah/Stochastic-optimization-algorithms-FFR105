%RunFFNNOptimization 
clear all
nIn = 3;
nHidden = 5;    %Can be changed
nOut = 2;

vMax = 25;      %m/s
wMax = 3;
wIH = (rand(nHidden, nIn + 1) - 0.5*ones(nHidden, nIn + 1))*2*wMax;
wHO = (rand(nOut, nHidden + 1) - 0.5*ones(nOut, nHidden + 1))*2*wMax;

chromosome = EncodeNetwork(wIH, wHO, wMax);
numberOfGenes = length(chromosome);

maximumFitness  = 0;
tournamentSize = 2;
tournamentProbability = 0.8; 
crossoverProbability = 0.8;
mutationProbability = 0.2;
numberOfGenerations = 50;
populationSize = 50;
population = InitializePopulation(populationSize,chromosome);

fitness = zeros(10,1);
maxFitness = zeros(numberOfGenerations,1);
for generation = 1:numberOfGenerations
    maximumFitness  = 0.0;
    fitnessList = zeros(populationSize,1);
    for i = 1:populationSize
        chromosome = population(i,:);
        [wIH, wHO] = DecodeChromosome(chromosome, nIn, nHidden, nOut, wMax);
        for j = 1:10
            [v, distance] = testTruck(j, 1, wIH, wHO);
               fitness(j) = mean(v)*max(distance);
        end
        fitnessList(i) = min(fitness);
        if (fitnessList(i) > maximumFitness ) 
            maximumFitness  = fitnessList(i);
            iBestTruck = i;
            bestWIH = wIH;
            bestWHO = wHO;
        end
    end
    maxFitness(generation) = max(fitnessList);

    temporaryPopulation = population;  
    for i = 1:2:populationSize
        i1 = TournamentSelect(fitnessList,tournamentProbability,tournamentSize);
        i2 = TournamentSelect(fitnessList,tournamentProbability,tournamentSize);
        r = rand;
        if (r < crossoverProbability) 
         Truck1 = population(i1,:);
         Truck2 = population(i2,:);
         newTruckPair = Cross(Truck1, Truck2);
         temporaryPopulation(i,:) = newTruckPair(1,:);
         temporaryPopulation(i+1,:) = newTruckPair(2,:);
        else
         temporaryPopulation(i,:) = population(i1,:);
         temporaryPopulation(i+1,:) = population(i2,:);     
        end
    end
  
    temporaryPopulation(1,:) = population(iBestTruck,:);
    for i = 2:populationSize
        tempTruck = Mutate(temporaryPopulation(i,:),mutationProbability);
        temporaryPopulation(i,:) = tempTruck;
    end
    population = temporaryPopulation;

    
 end

plot(1:numberOfGenerations, maxFitness)
xlabel('Generation')
ylabel('Max Fitness')