f=@(x,y,t)sin(sqrt(x.^2+y.^2)-2*t);

[x,y] = meshgrid(-2*pi:.2:2*pi);

t = linspace(0,2*pi,500);

figure(1); clf

Mv=struct('cdata',{},'colormap',{})
for n=1:50
    z=f(x,y,t(n));
    s=surf(x,y,z);
    s.EdgeColor ='none';
    axis([-2*pi, 2*pi,-2*pi, 2*pi, -2,2 ]);
    Mv(n)=getframe;
    pause(0.02);


end

movie(Mv,4);