%Author:      Rachael Jackson
% Class:      ME 2016 - C
%Assignment:  HW 0
%Date:        August 30

g = 9.81; %gravitational constant
m = 68.1; %mass
c = 12.5; %drag coefficient

%t = ti:dt:tf;

ti = 0; %time initial
tf = 20; %time final
dt = 0.1; %time step

t = ti:dt:tf; %define time vector

N = (tf - ti)/dt; %number of steps

v= []; %define velocity vector

v(1) = 0; %velocity at ti

for i = 1:N
    v(i+1) = v(i) + (g-(c/m)*v(i))*dt; %calculate velocity at time , Analytical Solution
end

time = linspace(0,20,201); %time variable to use for Approx Solution

velocity= g*m/c*(1 - exp(-(c/m)*time)); %calculate velocity at time , Approx Solution

plot(t,v,'bo'); %plot velocity versus time for Analytical Solution
xlabel('Time (s)'); %label x axis on plot
ylabel('Velocity (m/s)'); %label y axis on plot
title('Numerical and Analytical Solutions of Eulers Method'); %Title of plot
hold on %used to keep plot data on so that the next plot will overlay this one

plot(t,velocity, 'r', 'Linewidth', 2.0); %plot velocity versus time for Exact Solution
legend('Analytical Solution', 'Numerical Solution', 'location', 'northeast' ); %legend for plots based on line characterstics
hold off