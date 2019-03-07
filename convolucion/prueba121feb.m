function y = prueba121feb(g, h)
    clear
    g = [-2 0 1 -1 3];
    h = [1 2 0 -1];
    m = length(g);
    n= length(h);
    y = zeros(1,m+n-1);
    for i = 1:m
        for j = 1:n
            y(i+j-1)=y(i+j-1)+g(i)*h(j);
        end
    end
end