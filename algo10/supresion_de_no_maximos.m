function max_local = supresion_de_no_maximos(mag, grad)

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
end

end

[f,c]=size(mag);
%se puede hacer con padarray(f,[m n]) %m n es el numero de ceros por rellenar
imm = zeros(f+2,c+2);
img = zeros(f+2,c+2);
imm(2:f+1,2:c+1)=mag;
img(2:f+1,2:c+1)=grad;
[f,c]=size(imm);
imf = zeros(f,c);
for i=2:f-1
  for j=2:c-1
%     grados = angulosNorma(img(i,j));
    [x,y] = vecinos(i,j,img(i,j));
    %supresion de no maximos locales
    if max([imm(x(1),x(2)),imm(y(1),y(2))]) <= imm(i,j)
      imf(i,j)=imm(i,j);
    end
  end
end
max_local = imf(2:end-1,2:end-1);
end