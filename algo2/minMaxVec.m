function [mn,mx] = minMaxVec(v)
mn = v(1);
mx = v(1);
for i = 2:length(v)
    if v(i) < mn
        mn = v(i);
    end
    if v(i) > mx
        mx = v(i);
    end
end
end