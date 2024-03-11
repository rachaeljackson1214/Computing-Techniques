a = 1;
b = 2;%interval is a=1 to b=2
prev = 0;
x = 1.1:0.1:1.9;%setting the middle values of x with step size 0.1 from 1 to 2 excluding the first and last points
i = 1;
while i <= length(x)
    sum = prev + 2*(x(i).^3);%using middle part of trapezoidal numerical integration for the above x values
    prev = sum; %need to find sum of all points so save the sum in another variable so it can be added above
    i = i + 1; %increase i for while loop
end
fx_naught = (x(1) - 0.1).^3;%find f0 part of the trapezoidal rule
fx_n = (x(length(x)) + 0.1).^3;%find fn part of trapezoidal rule equation
n = 10;%given the interval is 1, divided by the step size 0.1, n should be 10
I_trap = ((b-a))*((fx_naught+sum+fx_n)/(2*n));%using the three parts that we found, combine them to complete the trapezoidal rule
I_true = 15./4;%this is the true value of the integratioj found in part 1 of question 3
Er = abs(((I_true - I_trap)/I_true)) * 100; %finding percent error b/w true value and approx values of the integration
fprintf('Error is %f', Er);