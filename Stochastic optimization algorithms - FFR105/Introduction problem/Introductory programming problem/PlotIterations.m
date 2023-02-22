% This method should plot the polynomial and the iterates obtained
% using NewtonRaphsonStep (if any iterates were generated).

function PlotIterations(polynomialCoefficients, iterationValues)
    if isempty(iterationValues)
        return
    end 
    xMin = min(iterationValues) - 1;
    xMax = max(iterationValues) + 1;
    xValues = linspace(xMin, xMax);
    yValues = GetPolynomialValue(xValues, polynomialCoefficients);
    plot(xValues, yValues)%plot of graph
    hold on
    
    y = GetPolynomialValue(iterationValues, polynomialCoefficients);
    scatter(iterationValues, y ,'red');%plot of iterates
    title('Newton-Raphson method')
    xlabel('x')
    ylabel('f(x)')
  
end 
