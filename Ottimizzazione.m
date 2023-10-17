syms t % t variabile simbolica
b =2500/(1+9* exp(-t /3)); % b e’ una funzione simbolica
f1 = matlabFunction ( b );
b2 = diff (b ,2); % calcolo b’’ simbolicamente
f2 = matlabFunction ( b2 ); % trasformo b2 in function handle

%calcoliamo gli zeri di f
%disegno f
%usando i secanti scegli punti iniziali
%tolleranza 10^-8
%50 cose 

figure(1); clf

%fplot(f1,[0,20], 'MarkerFaceColor','auto')

hold on
fplot(f2,[0,20], 'MarkerFaceColor','auto')

grid on

tol=1e-8;
x0= 6;
x1= 8;
k_max=50;

[zero,res,k] = secanti(f,x0,x1,tol,k_max)

plot(zero,res, 'go', 'MarkerFaceColor','g')
