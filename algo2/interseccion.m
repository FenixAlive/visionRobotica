function s = interseccion(a,b)
sa =[a b];
ta = length(sa);
sf = [];
i = 1;
while i < ta
    j=i+1;
    while j <= ta
        if sa(i) == sa(j)
            a=0;
            for k = 1:length(sf)
                if sf(k) == sa(j)
                    a = 1;
                end
            end
            if ~a
                sf(end+1)=sa(j);
            end
            sa(j) = [];
            ta = ta-1;
        else
            j=j+1;
        end
    end
    i = i+1;
end
s = sf;
end