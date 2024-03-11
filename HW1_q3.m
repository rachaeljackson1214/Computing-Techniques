%Script: HW1_q3

%This script plots sin x for -pi to +pi in increments of  0.1 for x.
%Included on the same plot are the MacLaurin expansions for sin x using
%1,2,3 then 4 terms over the same range of -pi to +pi.

%Outputs: plot of sin x, and MacLaurin expansions for sin x in 1,2,3, and 4
%terms

%Author: Rachael Jackson
%Section: ME 2016
%Assignment: HW1
%Date: September 11, 2022

x = -pi:0.1:pi; %saves vector of values of -pi to pi in steps of 0.1 in variable x
plot(x,sin(x)); %plot those x values with corresponding sin values
hold on
y = x; % this is the first term of MacLaurin 
plot(x,y); %plots one term MacLaurin
hold on
y = x - ((x.^3)/factorial(3)); % this is the 2 term MacLaurin
plot(x,y);%plots 2 term MacLaurin curve
hold on
y = x - ((x.^3)/factorial(3)) + ((x.^5)/factorial(5)); % this is the 3 term MacLaurin expansion
plot(x,y); %plots 3 term McLaurin curve
hold on
y = x - ((x.^3)/factorial(3)) + ((x.^5)/factorial(5)) - ((x.^7)/factorial(7)); %this is the 4 term MacLaurin expansion
plot(x,y); %plots 4 term Maclaurin
xlim([-inf,inf]); %use this to fit curves flush to edges of graph, other wise they float in the middle of the graph
legend('sin(x)','1 term MacLaurin','2 term MacLaurin','3 term MacLaurin','4 term MacLaurin');