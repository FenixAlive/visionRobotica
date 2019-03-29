clear
%defivada de funciones
deltax = .1;

syms x;
y1 = x.^2;
y2 = x.^3-2*x+1;
y3 = x.^4;

dery1 = diff(y1);
dery2 = diff(y2);
dery3 = diff(y3);

x = -5:deltax:5;

y = subs(y3,x);

yade = difFinitaAdelante(y,deltax);
yatr = difFinitaAtras(y,deltax);
ycen = difFinitaCentral(y, deltax);





figure;
hold on;
%plot de mis funciones
plot(x, yade,'b*');
plot(x, yatr,'y*');
plot(x, ycen,'r*');


plot(x,subs(dery3,x), 'k');
