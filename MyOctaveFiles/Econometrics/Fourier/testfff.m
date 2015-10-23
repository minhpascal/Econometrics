n = 1000;
x = 4*rand(n,1) - 2;
x = sort(x);
trueline = 1 + x - (1/2)*x.^2 + (1/6)*x.^3;
y = trueline + randn(n,1);

kalpha = [1; 2; 3];
z = fff_regressors(x, kalpha);
b = mc_ols(y, z);
fit = z*b;
plot(x, [y trueline fit]);
