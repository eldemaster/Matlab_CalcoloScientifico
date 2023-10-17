%disegno di una superficie in forma parametrica

[r,theta]=meshgrid(0:.1:2,0:.1:6*pi)
x=r.*cos(theta);
y=r.*sin(theta);
z=theta;

figure; clf

s=surf(x,y,z);
s.EdgeColor='none';
colorbar
colormap('default')
grid on

xlabel('x')
ylabel('y')