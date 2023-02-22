%In the general case, j individuals are selected randomly from the population and the best individual is selected with probability ptour . 
%If this individual is not selected, the next step is to repeat the procedure for the remaining j ? 1 individuals, 
%again with probability ptour of selecting the best individual. j is referred to as the tournament
function selectedIndividualIndex = TournamentSelect(fitnessList, tournamentProbability, tournamentSize);
   populationSize = length(fitnessList);
   iTmp = zeros(1, tournamentSize);
   selectedIndexes = randperm(populationSize, tournamentSize);% randperm = returns a row vector containing a random permutation of the integers from 1 to n without repeating elements                                                           
      for i = 1:tournamentSize
          iTmp(i) = fitnessList(selectedIndexes(i));
      end
        [~, selectedIndividuals] = sort(iTmp,'descend');
      r = rand;
      selectedIndividualIndex = selectedIndividuals(end);%the worse individual is selected
      for i = 1:tournamentSize
          if r < tournamentProbability
            selectedIndividualIndex = selectedIndividuals(i);%selecting the better
          else 
           selectedIndividuals(i) = 0; 
           tournamentSize = tournamentSize - 1;
           if tournamentSize == 1
               break
           end
          end
      end
end
