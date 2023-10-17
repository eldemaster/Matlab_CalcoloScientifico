clear;
f=@(x,y)(x.*exp(-(x.^2+y.^2)))

[x,y] = meshgrid(-2:.1:2,-2:.1:2)

z = f(x,y); surf(x,y,gradient(z)); colorbar



grid on

% meshc(x,y,z)

% plot3(x,y,z)
contour(x,y,z,[-0.2,0.2])

xlabel('x')
ylabel('y')
zlabel('z')