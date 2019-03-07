clear
g = [-1 2 3 -5];
h = [2.2 3.5 4.9 g 5.2];

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

con = xcorr(h,g)

[num,pos] = max(con);

retardos = -M+1:1:M-1;

retardo = retardos(pos);

