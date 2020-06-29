clear; clf; hold off;
% 0.048
h = [1 0.875 0.75 0.625 0.5 0.375 0.25 0.1 0.048 0.024];

drawnow;
frame = getframe(1);
im = frame2im(frame);        
[imind,cm] = rgb2ind(im,256);       
outfile = 'GIF_Potencial_6_Cuerpos.gif';
imwrite(imind,cm,outfile,'gif','DelayTime',0,'loopcount',inf);

for i=1:1:length(h)
    xa=-2.5:h(i):0.5;
    ya=-1.5:h(i):1.5;
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
        k*q(6)./sqrt((x - px(6)).^2+(y - py(6)).^2) ;
    surfl(x,y,z);
    zlim([-20,20]); 
    title("Potencial 6 cuerpos - h = " + h(i));
    pause(1);
    drawnow;
    frame = getframe(1);
    im = frame2im(frame);        
    [imind,cm] = rgb2ind(im,256);       
    imwrite(imind,cm,outfile,'gif','DelayTime',1,'writemode','append');
end
