clear; clf; hold off;
xa=-5.2:0.0075:3;
ya=-5.2:0.0075:5;
k=1.; 
a = sqrt(3) * 1 / 2;
q  = [2, -1,   -2,    1,   -3,    1];
px = [0, -2, -0.5, -0.5, -1.5, -1.5];
py = [0,  0,    a,   -a,    a,   -a];
[x,y]=meshgrid(xa,ya);
z = k*q(1)./sqrt((x - px(1)).^2+(y - py(1)).^2) + ...
    k*q(2)./sqrt((x - px(2)).^2+(y - py(2)).^2) + ...
    k*q(3)./sqrt((x - px(3)).^2+(y - py(3)).^2) + ...
    k*q(4)./sqrt((x - px(4)).^2+(y - py(4)).^2) + ...
    k*q(5)./sqrt((x - px(5)).^2+(y - py(5)).^2) + ...
    k*q(6)./sqrt((x - px(6)).^2+(y - py(6)).^2);
zmax=max(max(z));
zmin=min(min(z));
dz=(zmax-zmin)/250;
nivel=zmin:dz:zmax;
contour(x,y,z,nivel);
axis equal