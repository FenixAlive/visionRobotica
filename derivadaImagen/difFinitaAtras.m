function x = difFinitaAtras(y, deltax)
x=zeros(1,length(y));
for i = 2: length(y)
    x(i) = (y(i)-y(i-1))/deltax;
end
x
end
