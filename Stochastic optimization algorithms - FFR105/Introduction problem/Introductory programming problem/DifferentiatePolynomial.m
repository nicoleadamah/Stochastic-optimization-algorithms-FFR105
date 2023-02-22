% This method should return the coefficients of the k-th derivative (defined by
% the derivativeOrder) of the polynomial given by the polynomialCoefficients (see also GetPolynomialValue)

function derivativeCoefficients = DifferentiatePolynomial(polynomialCoefficients, derivativeOrder)
   for i = 1:derivativeOrder  
       nCoefficients = length(polynomialCoefficients);
       if nCoefficients < derivativeOrder
           derivativeCoefficients = []; % return an empty vector
           return;
       end 
       % Start calculations
       newDerivativeCoefficients = zeros(1, nCoefficients - 1);
       for j = 1:length(newDerivativeCoefficients)
           newDerivativeCoefficients(j) = polynomialCoefficients(j+1) * j;
       end
       polynomialCoefficients = newDerivativeCoefficients;
   end
   derivativeCoefficients = newDerivativeCoefficients;

end

