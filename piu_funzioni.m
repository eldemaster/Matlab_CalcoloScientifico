f1= @(x)1/3*log(x/2)+x.^2;
f2=@(x)x.^2+x-1;
f=@(x)f1(x)-f2(x);
figure(1); clf
fplot(f1,[0.01, 2], 'LineWidth',2,'DisplayName','f1')
legend('-dynamiclegend')
hold on
fplot(f2,[0.01, 2], 'LineWidth',2,'DisplayName','f2')
fplot(f,[0.01, 2], 'LineWidth',2,'DisplayName','f')
grid on
xlabel('x')
ylabel('f(x)')



x0=0.22;

df = @(x)1./(3*x) -1;

tol=1e-8;

kmax=50;

[zero,res,k]=newton(f,df,x0,tol,kmax);

plot(zero,res,'ro')