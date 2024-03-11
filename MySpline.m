X = [1,2,3,4,5,6,7,8];
Y = [0,1,0,1,0,1,0,1];%original points
xx = 0.5:0.01:8.5;%will poly yy values with these given xx values
yy = spline(X,Y,xx);%just using spline function to go what lagrange did in problem 3
plot(xx,yy,X,Y,'or');%plotting spline function with original points
title('Spline Interpolation');
legend('Spline Function', 'Original Data Points');