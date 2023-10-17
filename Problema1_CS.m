%Definisco la funzione
f=@(x)(2*x-sqrt(2)).^2.*sin(2*x);
%Genero la finestra
figure(1)
%Genero il grafico
fplot(f,[-2*pi,2*pi])
%Inserisco una stringa
legend('f(x)')

xlabel('x') % aggiungo label all’asse x 
ylabel('y') % aggiungo label all’asse y
grid on % griglia