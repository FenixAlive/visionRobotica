function s = eliminaNegativos(v)
s = [];
for i=1:length(v)
    if v(i) >= 0
        s(end+1)= v(i);
    end
end
end