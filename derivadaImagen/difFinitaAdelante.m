function x = difFinitaAdelante(y, deltax)
x=zeros(1,length(y));
for i = 1: length(y)-1
    x(i) = (y(i+1)-y(i))/deltax;
end
x
end
