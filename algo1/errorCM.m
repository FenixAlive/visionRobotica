function e = errorCM(y1,y)
    n= length(y);
    x=0;
    for i =1:n
        x = x+(y1(i)-y(i))^2;
    end
    e= x/n;
end
