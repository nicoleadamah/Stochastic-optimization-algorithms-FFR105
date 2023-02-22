% nIn = the number of inputs
% nHidden = the number of hidden neurons
% nOut = the number of output neurons
% Weights (and biases) should take values in the range [-wMax,wMax]

function [wIH, wHO] = DecodeChromosome(chromosome, nIn, nHidden, nOut, wMax);
    wIH = zeros(nHidden, nIn + 1);
    wHO = zeros(nOut, nHidden + 1);
    wIH_size = numel(wIH);
    wHO_size = numel(wHO);
    
    for i = 1:wIH_size
        wIH(i) = ((chromosome(i)*2)-1)*wMax;
    end

    for i = 1:wHO_size
        wHO(i)= ((chromosome(i + wIH_size)*2)-1)*wMax;
    end
end
