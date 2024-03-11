xL = 0.5;
xU = 10;
root = 1.4191;
approxErr = [];
trueErr = [];
iter = 0; %Define the numbering of first iteration
ea = 1;
xr = (xL + xU)/2;

while ea > 0.01
    fr = log(xr.^2)-0.7;
    fl = log(xL.^2)-0.7;
    %iter = iter +1;
    test = fl*fr;
        if test < 0
            xU = xr;
        elseif test > 0
            xL = xr;
        end
    iter = iter +1;
    xrold = xr;
    trueErr(iter) = abs(root - xr);
    xr = (xL + xU)/2; 
    approxErr(iter) = abs((xr-xrold)/xr);
    ea = abs((xr-xrold)/xr)*100; 
end

fprintf('The root is %0.4f \n',xr);
plot(approxErr)
hold on 
plot(trueErr)
xlim([-inf,inf])
legend('ApproxError', 'TrueError');