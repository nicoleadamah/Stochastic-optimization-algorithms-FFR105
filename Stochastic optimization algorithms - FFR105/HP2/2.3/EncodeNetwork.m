function chromosome = EncodeNetwork(wIH, wHO, wMax)
    wIH_size = numel(wIH);
    wHO_size = numel(wHO);
    wIHGenes = zeros(1,wIH_size);
    wHOGenes = zeros(1, wHO_size);
    for i = 1:wIH_size
        wIHGenes(i) = (wIH(i)/wMax);
    end
    for j = 1:wHO_size
        wHOGenes(j) = wHO(j)/wMax;
    end
    chromosome = [(wIHGenes+1)/2, (wHOGenes+1)/2];    
end 