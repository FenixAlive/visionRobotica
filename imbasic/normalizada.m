function n = normalizada(h,Ig)
[r,c]=size(Ig)
%frecuencia acumulada
ha = zeros(1,256);
ha(1)=h(1);
for i=2:length(h)
    ha(i)=ha(i-1)+h(i);
end
%frecuencia acumulada normalizada
han= ha./(r*c);
n = han;
end