f=@(x)sin(x.^2);

x=linspace(-2*pi,2*pi,100)
% x=linspace(a,b,n) crea un vettore riga di n elem, % contenenti le ascisse di n punti equispaziati
% sull’intervallo chiuso [a,b]

y=f(x); % valuto f

figure(2) % apro una finestra grafica

plot(x,y) % matlab disegna la spezzata che congiunge i punti (x_i,y_i)


x=linspace(-2*pi,2*pi,1000)
y=f(x);

%plot(x,y)

plot(x,y, 'm*-')

hold on

%color: c,m,y,r,b,g,w,k linestyle: -,--,:,-.,none marker: +,o,*,.,x,s

figure(3) 
g=@(x)(sin(x)).^2;
yg=g(x);
plot(x,y,'b-',x,yg,'r--');

