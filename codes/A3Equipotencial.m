clear; clf; hold off;
%0.07
%0.0175
xa=-3.1:0.14:3;
ya=-3.1:0.14:3;
k=1.; 
q1 = 1; 
q2 =-1;
q3 =-1;
x1 = 1;     y1 = 0;
x2 = 0;     y2 = 0;
x3 = 0.5;   y3 = sqrt(3) * abs(x2 - x1) / 2;
[x,y]=meshgrid(xa,ya);
z = k*q1./sqrt((x - x1).^2+(y - y1).^2)+...
    k*q2./sqrt((x - x2).^2+(y - y2).^2)+...
    k*q3./sqrt((x - x3).^2+(y - y3).^2);
zmax=max(max(z));
zmin=min(min(z));
dz=(zmax-zmin)/200;
nivel=zmin:dz:zmax;
contour(x,y,z,nivel);
axis equal