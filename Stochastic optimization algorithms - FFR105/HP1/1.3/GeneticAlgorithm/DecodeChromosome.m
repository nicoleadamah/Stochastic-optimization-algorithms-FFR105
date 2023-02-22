% Note: Each component of x should take values in [-a,a], where a = maximumVariableValue.

function x = DecodeChromosome(chromosome, numberOfVariables, maximumVariableValue)
   nGenes = length(chromosome);
   k = fix(nGenes/numberOfVariables);% fix = round down to nearest integear
   x = zeros(1, numberOfVariables);

      for i = 1:numberOfVariables
          x(i) = 0.0;
          for j = 1:k
              x(i) = x(i) + chromosome(j + (i-1)*k)*2^(-j); 
          end 
   x(i) = -maximumVariableValue + 2*maximumVariableValue*x(i)/(1-2^(-k));
      end
end
   