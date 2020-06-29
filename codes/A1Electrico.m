clear; clf; hold off;
xa=-2:0.2:2;
ya=-2:0.2:2;
k=1.; 
q1 = 1; 
q2 =-1;
q3 =-1;
x1 = 1;     y1 = 0;
x2 = 0;     y2 = 0;
x3 = 0.5;   y3 = sqrt(3) * abs(x2 - x1) / 2;
[x,y]=meshgrid(xa,ya);
Ex =    k*q1*(x - x1)./((x - x1).^2+(y - y1).^2).^(1.5)+ ...
        k*q2*(x - x2)./((x - x2).^2+(y - y2).^2).^(1.5)+ ...
        k*q3*(x - x3)./((x - x3).^2+(y - y3).^2).^(1.5);
Ey =    k*q1*(y - y1)./((x - x1).^2+(y - y1).^2).^(1.5)+ ...
        k*q2*(y - y2)./((x - x2).^2+(y - y2).^2).^(1.5)+ ...
        k*q3*(y - y3)./((x - x3).^2+(y - y3).^2).^(1.5);
hold on
plot(x1,y1,'b*')
plot(x2,y2,'r*')
plot(x3,y3,'r*')
quiver(x,y,Ex,Ey); axis square