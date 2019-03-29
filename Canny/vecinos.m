function [p1,p2] = vecinos(i,j,angulo)
%angulo puede ser 0, 45, 90, 135
if angulo == 0
    p1 = [i,j-1];
    p2 = [i,j+1];
elseif angulo == 45
    p1 = [i-1,j+1];
    p2 = [i+1,j-1];
elseif angulo == 90
    p1 = [i-1,j];
    p2 = [i+1,j];
elseif angulo == 135
    p1 = [i-1, j-1];
    p2 = [i+1, j+1];
else
    p1 = "Angulo no valido";
    p2 = "Angulo no valido";
end