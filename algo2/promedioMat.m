function p = promedioMat(m)
[f,c]=size(m);
p=sum(sum(m))/(f*c);
end