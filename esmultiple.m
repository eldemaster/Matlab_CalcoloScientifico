% esercizio radici multiple. Confronto dell'ordine di accuratezza di Newton
% a seconda che alpha sia semplice o multipla

%f=@(x)sin(x-1)-0.5*sin(2*(x-1));
f=@(x)x.^2-3*x+4;
figure(1); clf
fplot(f,[-3,3],'Linewidth',2)
grid on
xlabel('x')
ylabel('f(x)')

% risolvo con x0 prossimo alla radice di sx
disp('cerco la radice di sinistra')
%df=@(x)cos(x-1)-cos(2*(x-1));
df=@(x)2x-3;
x0=-2;
tol=1e-8;
%kmax=60;
kmax=50;
[zero,res,it_sx,ERR_sx] = newton(f,df,x0,tol,kmax)
figure(1);
hold on
plot(zero,res,'ro','MarkerFaceColor','r')

% risolvo con x0 prossimo alla radice di dx
disp('cerco la radice di destra')
%df=@(x)cos(x-1)-cos(2*(x-1));
df=@(x)2x-3;
x0=1.2;
tol=1e-8;
%kmax=60;
kmax=50;
[zero,res,it_dx,ERR_dx] = newton(f,df,x0,tol,kmax)
figure(1);
hold on
plot(zero,res,'go','MarkerFaceColor','g')

%scala logaritmica

figure(3); clf
semilogy((0:it_sx)', ERR_sx, 'DisplayName','errore sx')
legend('-dynamiclegend')
hold on

semilogy((0:it_dx)',ERR_dx, 'DisplayName','errore dx')
grid on