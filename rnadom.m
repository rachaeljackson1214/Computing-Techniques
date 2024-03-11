X = linspace(0,10,100);
Y = 2*sin(X+0.5*pi);

% MATLAB code for finding error in A & phi and Plotting Err vs B
clc;clear;close;
% Defining B
B=0:0.1:3;
% True values of A and phi
Atrue=2;
Phitrue=pi/2;
% Pre allocation of variables
phi=zeros(1,length(B));
A=zeros(1,length(B));
Err_A=zeros(1,length(B));
Err_phi=zeros(1,length(B));
% Using for loop to find Error in A & phi
for i=1:length(B)
X=linspace(0,10,100);
rng('default');
Y=2*sin(X+0.5*pi)+B(i)*2*((rand(size(X))-0.5));
v1=sin(X)';
v2=cos(X)';
C=[v1,v2];
D=Y';
% Linear Regression for multiple variables
si=inv(C'*C)*C'*D;
% phi and A value calculation
phi(i)=atan(si(2)/si(1));
A(i)=si(2)/sin(phi(i));
% True error calculation
Err_A(i)=abs(Atrue-A(i));
Err_phi(i)=abs(Phitrue-phi(i));
end
%plotting of error vs B
plot(B,Err_A,'r-','LineWidth',1.5); hold on;
plot(B,Err_phi,'b-','LineWidth',1.5);
xlabel('Noise Amplitude, B \rightarrow');
ylabel('Error \rightarrow');
title('Error vs B');
legend('Error in A','Error in phi');
grid on;