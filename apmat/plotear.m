subplot(2,2,1);
x = [1,2,5,7];
y = [5,6,3,2];
hold on;
plot(x,y);
subplot(2,2,2);
plot(rand(1,30),'r')
figure(2);
hold on;
grid on;
plot3(10, 5,3,'r+');
figure(3);
hold on;
grid on;
px = -10:.1:10;
py = px;
[x,y] = meshgrid(px,py);%crea combinaciones entre las dos variables
z = x.^2-3*y.^2*cos(x);
mesh(x,y,z)