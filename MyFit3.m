X = linspace(0,10,100);
B=0:0.1:3;
Atrue=2;
phitrue=pi/2;
Z=zeros(length(X),2);
A1 = [];
A2 = [];
for i=1:length(B)%loop will run for length of B
    Z(:,1)= sin(X); %first column of z = sin(X)
    Z(:,2) = cos(X);%second column of z = cos(X)
    X = linspace(0,10,100);
    rng('default');%sets number generator to default value to stabalize results
    Y=2*sin(X+0.5*pi)+B(i)*2*((rand(size(X))-0.5));%Given Y function 
    Y = Y';%tranposes Y
    A = (inv(Z'*Z))*(Z'* Y);%using least squares matrix formualtion to find A
    phi(i) = atan(A(2)./A(1));%find phi from A
    amp(i)=A(2)/sin(phi(i));%finds amplitude from phi, this connection is made through trig
    amp_error(i)=abs(Atrue-amp(i));%error of amplitude from given tru value of 2
    phi_error(i)=abs(phitrue-phi(i));%error of phi from given value of pi/2
end
y = A(1)*sin(X)+ A(2)*cos(X);%best fit line of noisy function 
figure
plot(X,Y,'ro',X,y,'b-');%plots that best fit line with the points from Y as reference 
title('Data Points + Noisy Best Fit Function');
legend('Data Points','Best Fit');
figure
plot(B,amp_error, 'r-', B, phi_error, 'b-');% plots error or phi and error of amp w respect to the values of B
title('Error of A and Phi vs B');
legend('Error in A','Error in Phi');