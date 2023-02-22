%sigmoid
function result = Sigmoid(s) 
    c = 2;
    result = 1/(1+exp(-c*s));
end