function s = union(a,b)
sa =[a b];
ta = length(sa);
i = 1;
while i < ta
    j=i+1;
    while j <= ta
        if sa(i) == sa(j)
            sa(j) = [];
            ta = ta-1;
        else
            j=j+1;
        end
    end
    i = i+1;
end
s = sa;
end