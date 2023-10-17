function calcolopi(N)

%propagazione errori di arrotondamento

%istruzione di chiamata: calcolopi(N)


f=zeros(N,1);
f(2)=2;
for n=2:N-1
    f(n+1)=2^(n-0.5)*sqrt(1-sqrt(1-4^(1-n)*f(n)^2));
end

%vettore errori
e = abs(f-pi)/pi;

%disegno
figure(1); clf
plot((2:N)',f(2:N), 'bo', 'MarkerFaceColor','auto')
grid on 
hold on
plot([2,N],[pi,pi], 'k--')
xlabel('n')
ylabel('f_n')

figure(2); clf
semilogy((2:N)',e(2:N), 'ro', 'MarkerFaceColor','auto')
grid on
xlabel('n')
ylabel('f_n')
