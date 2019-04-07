function imf = canny(im,Fa,Fb)
hx = [-1 1];
hy = [-1; 1];

cx = conv2(im, hx, 'same');
cy = conv2(im, hy, 'same');

mag = sqrt(cx.^2+cy.^2);

grad = atan2(cy,cx);

[f,c]=size(im);
%se puede hacer con padarray(f,[m n]) %m n es el numero de ceros por rellenar
imm = zeros(f+2,c+2);
img = zeros(f+2,c+2);


imm(2:f+1,2:c+1)=mag;
img(2:f+1,2:c+1)=grad;
[f,c]=size(imm);
for i=2:f-1
  for j=2:c-1
    grados = angulosNorma(img(i,j));
    [x,y] = vecinos(i,j,grados);
    %supresion de no maximos locales
    if max([imm(i,j),imm(x(1),x(2)),imm(y(1),y(2))]) > imm(i,j)
      imm(i,j)=0;
    end
  end
end
im = imm(2:end-1,2:end-1);

%umbrales por histerisis
% Fa = 0.13;
% Fb = 0.07;
imf = histe(im,Fa,Fb);
end