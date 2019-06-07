function bordes = filtrado_por_histeresis(bmw)
[m,n]=size(bmw);

Mm = max(bmw(:));
Fa = 0.175;
Fb = 0.075;

Ta =Fa*Mm;
Tb =Fb*Mm;

mercedez = zeros(m+2, n+2);
mercedez(2:end-1,2:end-1)=bmw;
[m1,n1]=size(mercedez);

honda = zeros(m1,n1);
for i = 2:m1-1
    for j= 2:n1-1
        if mercedez(i,j)>Ta
            honda(i,j)=1;
        elseif mercedez(i,j) > Tb
            marca = mercedez(i-1:i+1,j-1:j+1);
            honda(i,j)=vecino_borde_fuerte(marca,Ta);
        end
    end
end
bordes = uint8(honda(2:end-1,2:end-1));
end