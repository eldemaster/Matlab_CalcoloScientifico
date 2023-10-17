h = @(x)(x-5).^2-3*sin(x-5);
figure(1); clf
fplot(h,[0,10],'Linewidth',2)
grid on
xlabel('x')
ylabel('f(x)')

h1=@(x)2*(x-5)-3*cos(x-5);
figure(1); clf
fplot(h1,[0,10],'Linewidth',2)
grid on
xlabel('x')
ylabel('f(x)')
%newton per 0 di h1

f = h1;
df = @(x)2+3*sin(x-5);
x0=0;
tol=1e-8;
kmax=50;
[zero,res,k,ERR]=newton_ERR(f,df,x0,tol,kmax)
hold on
plot(h1,zero,res,'or')