function s = serie(x,n)
    if n < 1
        s = 1;
    else
        s = (x.^n/factorial(n))+serie(x,n-1);
    end
end