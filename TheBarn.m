X = [1,2,3,4,5,6,7,8];
Y = [0,1,0,1,0,1,0,1];
sum = 0;
n = length(X);
for i=1:n
    product = 1;
    for j=1:n
        if i~=j
            step = poly(X(j))/(X(i)-X(j));%first part of lagrangr polynomial interpolation, poly converst roots to polynomial
            product = conv(product,step);%multiplies these two polynomials
        end
    end
    sum = sum + product*Y(i);%sums values of the value product*Y(i) as per lagrange interpolation
end
xx = 0.5:0.01:8.5;
yy = polyval(sum,xx);
plot(xx,yy,X,Y,'or');%plotting values of lagrange polynomial on the above xx values along w original points
title('Langrange Interpolation');
legend('Lagrange Polynomial Function', 'Original Data Points');