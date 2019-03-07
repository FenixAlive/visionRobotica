function [a,b,c,d,e] = funcionEjemplo1(x,y)
    a = x+y;
    b = x-y;
    c= x*y;
    d = x/y;
    %no te obliga a poner end a la función
    % puedes tener funciones locales
    function y = cubo(x)
        y = x.^3;
    end
    e = cubo(x)