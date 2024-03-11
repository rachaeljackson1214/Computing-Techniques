f = @(t,x, xprime) xprime;
g = @(t,x, xprime) -4*xprime-5*x;
x = [];
xprime=[];
x(1) = 3;
xprime(1) = -5;
t = 0;
h = 0.1;
j = 1;
    for i = 0.1:0.1:5 
        k11 = f(t, x(j), xprime(j));
        k12 = g(t, x(j), xprime(j));
        k21 = f(t+0.5*h, x(j)+0.5*k11*h, xprime(j)+0.5*k11*h);
        k22 = g(t+0.5*h, x(j)+0.5*k12*h, xprime(j)+0.5*k12*h);
        k31 = f(t+0.5*h, x(j)+0.5*k21*h, xprime(j)+0.5*k21*h);
        k32 = g(t+0.5*h, x(j)+0.5*k22*h, xprime(j)+0.5*k22*h);
        k41 = f(t+h, x(j)+k31*h, xprime(j)+k31*h);
        k42 = g(t+h, x(j)+k32*h, xprime(j)+k32*h);
        j = j+1;
        x(j) = x(j-1) + (1/6)*(k11+2*k21+2*k31+k41)*h;
        xprime(j) = xprime(j-1) + (1/6)*(k12+2*k22+2*k32+k42)*h;
        t = t+h;
    end
t = 0:0.1:5;
plot((3*exp(-2*t).*(cos(t))) + ((exp(-2*t)).*(sin(t))), 'r--') 
hold on 
plot(x, 'b-')
plot(xprime, 'g-')
hold off
legend('True Solution', 'Numerical Solution - x', 'Numerical Solution - xprime')
title('True Solution v Numerical Solution')
xlim([-inf,inf])