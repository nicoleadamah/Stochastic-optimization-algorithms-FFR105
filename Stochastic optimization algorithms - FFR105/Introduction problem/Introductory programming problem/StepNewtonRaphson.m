% This method should perform a single step of the Newton-Raphson method.
% Note: In cases where the step cannot be completed, e.g. if f" = 0, a
% clear error message should be given.

function xNext = StepNewtonRaphson(x, fPrime, fDoublePrime)
msg = 'The operation can not continue because fDoublePrime is equal to zero, the degree of the polynomial must be 2 or larger!';
    if fDoublePrime == 0
        disp(msg);
        xNext = NaN;
        return
    end 
    xNext = x - (fPrime/fDoublePrime);
end 
