X = linspace(0,10,100);
Y = 2*sin(X+0.5*pi);
Y = Y';%transpose Y
Z=zeros(length(X),2);%create Z vector
Z(:,1)= sin(X);%Z1 is sinX as per work included in homework writeup
Z(:,2) = cos(X);%Z2 is cosX, now Z is a vector w n roaws and 2 columns
A = (inv(Z'*Z))*(Z'* Y);%using least square matrix forumaltion to find A from Z and Y 
phi = atan(A(1)./A(2));%using trig connections shown in my homework writeup to find phi from A1 and A2
y = A(1)*sin(X)+ A(2)*cos(X);%best fit line