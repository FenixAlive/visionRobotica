close all;
clear;
im = zeros(60, 70);
im(10:15,10:15)=1;
im(40:45,10:15)=1;
im(10:13,40:50)=1;
im(40:43,40:50)=1;
figure;
imshow(im)

tmin=-90;
tmax=89;
T=-90:89;

[f, c] = size(im);
%tamaño de p
dp = floor(sqrt(f^2+c^2));
R=-dp:dp;


%tamaño de V
v = zeros(dp*2+1,181);
for y=1:f
    for x=1:c
        if im(y,x)
        for th = tmin:tmax
            p = floor(x*cosd(th)+y*sind(th));
            v(p+dp,th+91) = v(p+dp,th+91)+1;
        end
        end
    end
end
[valm,~]=max(v(:));
figure;
imshow(v, [], 'XData', T, 'YData',R,'InitialMagnification','fit');
title("función propia");
axis on, axis normal, hold on;
[rom, thm]=find(v == valm);
xf = T(thm);
yf = R(rom);
plot(xf,yf,'r+')

%formulas matlab
[vm, tm, rm] = hough(im);
figure;
imshow(vm, [], 'XData', tm, 'YData',rm,'InitialMagnification','fit');
title("funcion matlab");
hp = houghpeaks(im);
hl = houghlines(im, T, R, p, 'FillGap',5,'MinLength',7);

% p = x.*cos(th)+y.*sin(th)
% 71 = x*cos(1)+y*sin(1)
