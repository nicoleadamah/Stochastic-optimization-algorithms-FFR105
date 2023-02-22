function newIndividuals = Cross(individual1, individual2)
   nGenes = size(individual1, 2);
   crossoverPoint = 1 + fix(rand*(nGenes-1));
   newIndividuals = zeros(2, nGenes);
   for j = 1:nGenes
       if (j <= crossoverPoint)
           newIndividuals(1,j) = individual1(j);
           newIndividuals(2,j) = individual2(j);
       else
           newIndividuals(1,j) = individual2(j);
           newIndividuals(2,j) = individual1(j);
       end
   end
end


