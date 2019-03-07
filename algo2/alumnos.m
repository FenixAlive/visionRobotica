function [aprov, repro] = alumnos(v)
aprov = 0;
repro = 0;
for i =1:length(v)
    if v(i) < 60
        repro = repro+1;
    else
        aprov = aprov+1;
    end
end
end