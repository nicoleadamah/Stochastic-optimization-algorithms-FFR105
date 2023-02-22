%cross
function newTrucks = Cross(truck1, truck2)
    nGenes = size(truck1,2);  
    crossoverPoint = 1 + fix(rand*(nGenes-1));
    
    newTrucks = zeros(2,nGenes);
    for j = 1:nGenes
        if (j<= crossoverPoint)
            newTrucks(1,j) = truck1(j);
            newTrucks(2,j) = truck2(j);
        else
            newTrucks(1,j) = truck2(j);
            newTrucks(2,j) = truck1(j);
        end
    end
end