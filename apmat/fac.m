function x = fac(a)
    if a <= 1
        x = 1;
    else
        x = a*fac(a-1);
end