h=2;
xi = 2;

%Make first matrix M
M(1,1)=(-14/h^2)-1;
M(1,2)=(7/h^2)-1/h;
for i=2:8
    M(i,i-1)=(7/h^2)+1/h;
    M(i,i)=(-14/h^2)-1;
    M(i,i+1)=(7/h^2)-1/h;
end
M(9,8)=(7/h^2)+1/h;
M(9,9)=(-14/h^2)-1;

%Make second matrix B on the other side of the equal sign (M * yi = B)
B(1)=-2-5*((7/h^2)+(1/h));
for i=2:8
    B(i)= xi + 2;
    xi = B(i);
end
B(9)=-18-8*((7/h^2)-(1/h));

%Left Matrix Divide Command to solve fot Yi
y = M\B';
Y(1) = 5;%make new matrix Y which adds the boudary conditions
for i=2:10
    Y(i) = y(i-1);
end
Y(11) = 8;

%Plot Results
X = 0:h:20;
plot(X,Y)
title('BVP Results Plot')
xlabel('x')
ylabel('y')
xlim([-inf,inf])