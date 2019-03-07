function s = sumNum(n)
    if n < 2
        s = 1;
    else
        s = n+sumNum(n-1);
    end
end