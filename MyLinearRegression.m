range = 0.02:0.02:0.2;
time = [0.25,0.30,0.40,0.45,0.50,0.55,0.60,0.66,0.69,0.74];
plot(range, time);
xlim([-inf,inf]);
hold on
slope=(length(range)*sum(range.*time)-sum(range)*sum(time))/(length(range)*sum(range.*range)-sum(range)^2);
polycoeff=(sum(time)*sum(range.*range)-sum(range)*sum(range.*time))/(length(range)*sum(range.*range)-sum(range)^2);
plot(range,slope*range+polycoeff, 'ro');
hold on;
SoS = 1/slope;
fprintf('The speed of sound is %f m/s \n',SoS);
legend('Plot of Data', 'Linear Regression of Data');