%Script: HW1_q4

%This script computes sin(pi) using the MacLaurin expansions for up to 10
% terms. Then, generated is a plot that displays the remainder as a function
% of the number of terms

%Outputs: plot that displays remainder Rn 

%Author: Rachael Jackson
%Section: ME 2016
%Assignment: HW1
%Date: September 11, 2022

r = [];%establish vectors for y values in my plot
x = 1:10;%establish values from 1-10 for x values in my plot

a = pi; % replace all Maclaurin apporximations for sin(x) from code for Part 3 with sin(pi)
r(1) = abs(a-sin(pi)); %find absolute value of the difference of the apporximation from true value and save it as first point 

a = pi - ((pi^3)/factorial(3)); % Maclaurin apporximations for sin(pi) 2 terms
r(2) = abs(a-sin(pi));

a = pi - ((pi^3)/factorial(3)) + ((pi^5)/factorial(5)); %  Maclaurin apporximations for sin(pi) 3 terms
r(3) = abs(a-sin(pi));

a = pi - ((pi^3)/factorial(3)) + ((pi^5)/factorial(5)) - ((pi^7)/factorial(7)); % Maclaurin apporximations for sin(pi) 4 terms
r(4) = abs(a-sin(pi));

a = pi - ((pi^3)/factorial(3)) + ((pi^5)/factorial(5)) - ((pi^7)/factorial(7)) + ((pi^9)/factorial(9)); % Maclaurin apporximations for sin(pi) 5 terms
r(5) = abs(a-sin(pi));

a = pi - ((pi^3)/factorial(3)) + ((pi^5)/factorial(5)) - ((pi^7)/factorial(7)) + ((pi^9)/factorial(9)) - ((pi^11)/factorial(11)); % Maclaurin apporximations for sin(pi) 6 terms
r(6) = abs(a-sin(pi));

a = pi - ((pi^3)/factorial(3)) + ((pi^5)/factorial(5)) - ((pi^7)/factorial(7)) + ((pi^9)/factorial(9)) - ((pi^11)/factorial(11)) + ((pi^13)/factorial(13)); % Maclaurin apporximations for sin(pi) 7 terms
r(7) = abs(a-sin(pi));

a = pi - ((pi^3)/factorial(3)) + ((pi^5)/factorial(5)) - ((pi^7)/factorial(7)) + ((pi^9)/factorial(9)) - ((pi^11)/factorial(11)) + ((pi^13)/factorial(13)) - ((pi^15)/factorial(15)); % Maclaurin apporximations for sin(pi) 8 terms
r(8) = abs(a-sin(pi));

a = pi - ((pi^3)/factorial(3)) + ((pi^5)/factorial(5)) - ((pi^7)/factorial(7)) + ((pi^9)/factorial(9)) - ((pi^11)/factorial(11)) + ((pi^13)/factorial(13)) - ((pi^15)/factorial(15)) + ((pi^17)/factorial(17)); % Maclaurin apporximations for sin(pi) 9 terms
r(9) = abs(a-sin(pi));

a = pi - ((pi^3)/factorial(3)) + ((pi^5)/factorial(5)) - ((pi^7)/factorial(7)) + ((pi^9)/factorial(9)) - ((pi^11)/factorial(11)) + ((pi^13)/factorial(13)) - ((pi^15)/factorial(15)) + ((pi^17)/factorial(17)) - ((pi^19)/factorial(19)); % Maclaurin apporximations for sin(pi) 10 terms
r(10) = abs(a-sin(pi));

plot(x,r);
