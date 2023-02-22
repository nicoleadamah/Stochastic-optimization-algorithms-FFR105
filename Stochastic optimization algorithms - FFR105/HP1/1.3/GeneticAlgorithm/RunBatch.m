%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Parameter specifications
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

numberOfRuns = 100;                % Do NOT change
populationSize = 100;              % Do NOT change
maximumVariableValue = 5;          % Do NOT change (x_i in [-a,a], where a = maximumVariableValue)
numberOfGenes = 50;                % Do NOT change
numberOfVariables = 2;		       % Do NOT change
numberOfGenerations = 300;         % Do NOT change
tournamentSize = 2;                % Do NOT change
tournamentProbability = 0.75;      % Do NOT change
crossoverProbability = 0.8;        % Do NOT change


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Batch runs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define more runs here (pMut < 0.02) ...
mutationProbability = 0;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList000 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList000(i,1) = maximumFitness;
end

mutationProbability = 0.01;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList001 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList001(i,1) = maximumFitness;
end


mutationProbability = 0.02;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList002 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns 
 [maximumFitness, bestVariableValues]  = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                       tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
 sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
  maximumFitnessList002(i,1) = maximumFitness;
end

% ... and here (pMut > 0.02)
mutationProbability = 0.04;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList004 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns
    [maximumFitness, bestVariableValues] = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                         tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
    sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
     maximumFitnessList004(i,1) = maximumFitness;
end

mutationProbability = 0.08;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList008 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns
    [maximumFitness, bestVariableValues] = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                         tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
    sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
     maximumFitnessList008(i,1) = maximumFitness;
end

mutationProbability = 0.1;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList010 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns
    [maximumFitness, bestVariableValues] = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                         tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
    sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
     maximumFitnessList010(i,1) = maximumFitness;
end

mutationProbability = 0.3;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList030 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns
    [maximumFitness, bestVariableValues] = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                         tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
    sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
     maximumFitnessList030(i,1) = maximumFitness;
end

mutationProbability = 0.5;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList050 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns
    [maximumFitness, bestVariableValues] = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                         tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
    sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
     maximumFitnessList050(i,1) = maximumFitness;
end

mutationProbability = 0.7;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList070 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns
    [maximumFitness, bestVariableValues] = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                         tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
    sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
     maximumFitnessList070(i,1) = maximumFitness;
end

mutationProbability = 1.0;
sprintf('Mutation rate = %0.5f', mutationProbability)
maximumFitnessList1 = zeros(numberOfRuns,1);
for i = 1:numberOfRuns
    [maximumFitness, bestVariableValues] = RunFunctionOptimization(populationSize, numberOfGenes, numberOfVariables, maximumVariableValue, tournamentSize, ...
                                         tournamentProbability, crossoverProbability, mutationProbability, numberOfGenerations);
    sprintf('Run: %d, Score: %0.10f', i, maximumFitness)
     maximumFitnessList1(i,1) = maximumFitness;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Summary of results
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Add more results summaries here (pMut < 0.02) ...
average000 = mean(maximumFitnessList000);
median000 = median(maximumFitnessList000);
std000 = sqrt(var(maximumFitnessList000));
sprintf('PMut = 0: Median: %0.10f, Average: %0.10f, STD: %0.10f', median000, average000, std000)

average001 = mean(maximumFitnessList001);
median001= median(maximumFitnessList001);
std001 = sqrt(var(maximumFitnessList001));
sprintf('PMut = 0.01: Median: %0.10f, Average: %0.10f, STD: %0.10f', median001, average001, std001)

average002 = mean(maximumFitnessList002);
median002 = median(maximumFitnessList002);
std002 = sqrt(var(maximumFitnessList002));
sprintf('PMut = 0.02: Median: %0.10f, Average: %0.10f, STD: %0.10f', median002, average002, std002)

% ... and here (pMut > 0.02)
average004 = mean(maximumFitnessList004);
median004 = median(maximumFitnessList004);
std004 = sqrt(var(maximumFitnessList004));
sprintf('PMut = 0.04: Median: %0.10f, Average: %0.10f, STD: %0.10f', median004, average004, std004)

average008 = mean(maximumFitnessList008);
median008 = median(maximumFitnessList008);
std008 = sqrt(var(maximumFitnessList008));
sprintf('PMut = 0.08: Median: %0.10f, Average: %0.10f, STD: %0.10f', median008, average008, std008)

average01 = mean(maximumFitnessList010);
median01 = median(maximumFitnessList010);
std01 = sqrt(var(maximumFitnessList010));
sprintf('PMut = 0.1: Median: %0.10f, Average: %0.10f, STD: %0.10f', median01, average01, std01)

average03 = mean(maximumFitnessList030);
median03 = median(maximumFitnessList030);
std03 = sqrt(var(maximumFitnessList030));
sprintf('PMut = 0.3: Median: %0.10f, Average: %0.10f, STD: %0.10f', median03, average03, std03)

average05 = mean(maximumFitnessList050);
median05 = median(maximumFitnessList050);
std05 = sqrt(var(maximumFitnessList050));
sprintf('PMut = 0.5: Median: %0.10f, Average: %0.10f, STD: %0.10f', median05, average05, std05)

average07 = mean(maximumFitnessList070);
median07 = median(maximumFitnessList070);
std07 = sqrt(var(maximumFitnessList070));
sprintf('PMut = 0.7: Median: %0.10f, Average: %0.10f, STD: %0.10f', median07, average07, std07)

average1 = mean(maximumFitnessList1);
median1 = median(maximumFitnessList1);
std1 = sqrt(var(maximumFitnessList1));
sprintf('PMut = 1: Median: %0.10f, Average: %0.10f, STD: %0.10f', median1, average1, std1)
%%
% plot of the median performance as a function of pmut
pMut = [0 0.01 0.02 0.04 0.08 0.1 0.3 0.5 0.7 1];
medians = [median000 median001 median002 median004 median008 median01 median03 median05 median07 median1];
plot(pMut, medians, '-o');
xlabel('pMut')
ylabel('Median fitness')
set(gca, 'YScale', 'log')
xlim([0 1.2])
ylim([0 1.1])
title('plot of the median performance as a function of pmut')