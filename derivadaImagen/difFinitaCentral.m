function x = difFinitaCentral(y, deltax)
x=zeros(1,length(y));
for i = 2: length(y)-1
    x(i) = (y(i+1)-y(i-1))/(2*deltax);
end
x
end
