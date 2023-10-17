clear;
f=@(x)(2*x-sqrt(2)).^2.*sin(2*x);
g=@(x)exp(x).*cos(x);

x = linspace(-1,2);

y=f(x);
yg=g(x);

figure(1)

plot(x,y, 'b-', x,yg, 'r-')

l=legend('f(x)=(2x-sqrt(2))^2 sin(2x)','g(x)=e^x cos(x)')
set(l,'Location','Northwest')
grid on

xlabel('x')
ylabel('f(x)')
title('output del problema')

%cambio range di rappresentazione

axis([-1,2,-3,2])

