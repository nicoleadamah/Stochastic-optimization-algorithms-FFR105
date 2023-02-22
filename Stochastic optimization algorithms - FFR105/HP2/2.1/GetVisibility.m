function visibility = GetVisibility(cityLocation)
    nrCities = length(cityLocation);
    visibility = zeros(nrCities, nrCities);   
    for i = 1:nrCities
        for j = 1:nrCities
            visibility(i, j) = 1 / norm(cityLocation(i,:)-cityLocation(j,:));
        end
    end
end
