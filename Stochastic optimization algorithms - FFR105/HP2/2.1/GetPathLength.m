function pathLength = GetPathLength(path,cityLocation);
    pathLength = 0;
    for i = 1:length(path) - 1
        distance = norm(cityLocation(path(i),:) - cityLocation(path(i+1),:));
        pathLength = pathLength + distance;
    end
    pathLength = pathLength + norm(cityLocation(end,:) - cityLocation(path(1),:));
end
