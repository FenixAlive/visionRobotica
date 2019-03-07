function s = sumSerie(x,n)
    if ~mod(x,1) && ~mod(n,1)
        if n < 2
            s = 2/x;
        else
            s = (2/x)+sumSerie(x,n-1);
        end
    end
end