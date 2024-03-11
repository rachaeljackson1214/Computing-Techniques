iter = 0; %Define the numbering of first iteration
x = zeros(); %Initialize the root estimation
error = zeros(); %Initialize the error estimation
xi = 5;
es = 0.01;
imax = 20;
fi = log(xi.^2)-0.7; %Calculate the initial function value
dfi = 2/xi; %Calculate the initial derivative value

if dfi == 0
    disp('Error: First derivative is zero.');
    return
end

xn = xi - fi/dfi; %Calculate the next root estimation
ea = (xn - xi)/xn*100; %Calculate the error estimation
x(iter + 1) = xn; %Return root estimation
error(iter + 1) = ea; %Return error estimation
xi = xn; %Set next initial guess

while (abs(ea) > es) && (iter < imax)

    
    fi = log(xi.^2)-0.7; %Calculate the initial function value
    dfi = 2/xi; %Calculate the initial derivative value
    
    if dfi == 0
        disp('Error: First derivative is zero.');
        return
    end
    xn = xi - fi/dfi; %Calculate the next root estimation
    ea = (xn - xi)/xn*100; %Calculate the error estimation
    iter = iter + 1; %Add iteration value for next step
    x(iter + 1) = xn; %Return root estimation
    error(iter + 1) = ea; %Return error estimation
    xi = xn; %Set next initial guess
end

ffinal = log(xi.^2) - 0.7; %Return the final value of the function
fprintf('The root is %0.4f \n',xn);