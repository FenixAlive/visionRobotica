function y = prueba121feb(g, h)
    %la diferencia entre convolución y correlación es voltear o reflejar
    %una de las señales
    h = flip(h);
    m = length(g);
    n= length(h);
    y = zeros(1,m+n-1);
    for i = 1:m
        for j = 1:n
            y(i+j-1)=y(i+j-1)+g(i)*h(j);
        end
    end
end
% xcorr(g,h)