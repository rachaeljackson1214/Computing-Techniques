fc = @(x) log(x.^2)-0.7;
i = 10;
a = 1;
root = [];
for x = 0.5:0.5:i
    root(a) = fzero(fc,x);
    a = a + 1;
end
xr = sum(root)/length(root);
fprintf('The root is %0.4f \n',xr)