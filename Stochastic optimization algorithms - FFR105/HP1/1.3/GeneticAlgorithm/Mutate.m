function mutatedIndividual = Mutate(individual,mutationProbability)
   nGenes = length(individual);
   mutatedIndividual = individual;
   for j = 1:nGenes
       r = rand;
       if (r < mutationProbability)
           mutatedIndividual(j) = 1-individual(j);
       end
   end
end
