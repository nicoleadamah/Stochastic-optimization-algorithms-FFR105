% First compute the function value, then compute the fitness
% a,b,c,d stands for different terms in the function

function fitness = EvaluateIndividual(x)
    a = 1.5 - x(1) + x(1)*x(2);
    b = 2.25 - x(1) + x(1)*x(2)^2;
    c = 2.625 - x(1) + x(1)*x(2)^3;
    g_x = a^2 + b^2 + c^2;
    
    fitness = 1/(g_x+1);
end

   
   
   