clear
th = (0:360)*pi/180;

g = cos(2*th)-sin(0.5*th);
h = [sin(th*0.9)+cos(th*0.8) cos(th*0.5) cos(2*th)+sin(th*0.5) g sin(th)];

lg = length(g);
lh = length(h);
dif = lg-lh;

if dif < 0
    g = [g zeros(1,abs(dif))];
    M = lh;
else
    h = [h zeros(1,dif)];
    M = lg;
end

con = xcorr(h,g);

[num,pos] = max(con);

retardos = -M+1:1:M-1;

retardo = retardos(pos);

t = (0:M-1)+retardo;
figure;
hold on;
plot(h);
plot(t,g,'r')
