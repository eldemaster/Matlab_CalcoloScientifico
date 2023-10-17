phi1=@(x)-1/4*x.^2+x+1/2
phi2=@(x)-x.^2+x+2;
phi3=@(x) x/2+1./x;
figure(1); clf

fplot(phi1, [0.1,5], 'LineWidth',2, 'MarkerFaceColor','auto')
hold on
fplot(phi2, [0.1,5], 'LineWidth',2, 'MarkerFaceColor','auto')
hold on
fplot(phi3, [0.1,5], 'LineWidth',2, 'MarkerFaceColor','auto')
hold on
retta = @(x)-1*(x-sqrt(2))+sqrt(2);
fplot(@(x)x,[0.1,5])
hold on
fplot(retta,[0.1,5])

grid on
axis equal%sistema ascisse e ordinate
axis([0.1,5,0.1,5])
x0 = 1;
tol = 1e-12; 
kmax = 50;

[alpha, niter ,errori] = punto_fisso (phi1, x0, tol, kmax)
[alpha2, niter2 ,errori2] = punto_fisso (phi2, x0, tol, kmax)
[alpha3, niter3 ,errori3] = punto_fisso (phi3, x0, tol, kmax)

plot(alpha,alpha,'ro', 'MarkerFaceColor','r')
hold on
plot(alpha2,alpha2,'ko', 'MarkerFaceColor','r')
hold on
plot(alpha3,alpha3,'ro', 'MarkerFaceColor','r')

grid on

figure(2); clf
semilogy((0:niter)',errori)
legend('-dynamiclegend')
hold on 
xlabel('k')
ylabel('errori')

semilogy((0:niter2)',errori2)
hold on 
xlabel('k')
ylabel('errori')

semilogy((0:niter3)',errori3)
hold on 
xlabel('k')
ylabel('errori')

grid on