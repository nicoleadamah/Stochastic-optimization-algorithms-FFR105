% This function should run the Newton-Raphson method, making use of the
% other relevant functions (StepNewtonRaphson, DifferentiatePolynomial, and
% GetPolynomialValue). Before returning iterationValues any non-plottable values 
% (e.g. NaN) that can occur if the method fails (e.g. if the input is a
% first-order polynomial) should be removed, so that only values that
% CAN be plotted are returned. Thus, in some cases (again, the case of
% a first-order polynomial is an example) there may be no points to plot.

function iterationValues = RunNewtonRaphson(polynomialCoefficients, startingPoint, tolerance)
    iterationValues = [];
    
    x = 1; % initialize with a number suitable for the tolerence 
    nextX = startingPoint;    
    while abs(nextX - x) > tolerance
        iterationValues(end + 1) = x;
        x = nextX;
        fPrime = GetPolynomialValue(x, DifferentiatePolynomial(polynomialCoefficients, 1));
        fDoublePrime = GetPolynomialValue(x, DifferentiatePolynomial(polynomialCoefficients, 2));
        nextX = StepNewtonRaphson(x, fPrime, fDoublePrime);
        if isnan(nextX)
            iterationValues = [];
            return
        end 
        
    end 

end 