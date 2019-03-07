function [mn, mx] = minMaxMat(v)
[f,c]=size(v);
mn = v(1,1);
mx = v(1,1);
for i = 1:f
    for j = 1:c
        if v(i,j) < mn
            mn = v(i,j);
        end
        if v(i,j) > mx
            mx = v(i,j);
        end
    end
end
end