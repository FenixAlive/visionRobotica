close;
clear;
Im= zeros(100,100,'uint8');
Im(20:50,20:50)= 255;
%Im = checkerboard*255;
figure;
imshow(Im);
%filtro
fx = [-1 0 1; -1 0 1; -1 0 1];
fy = fx';
%derivadas
ix = conv2(Im,fx,'same');
iy = conv2(Im,fy,'same');
%cuadrados de derivadas
ix2 = ix.^2;
iy2 = iy.^2;
ixy = ix.*iy;
%filtro suavizador
fsp = ones(3)/9;
%aplicación de filtro usavizador
sx2 = conv2(ix2,fsp, 'same');
sy2 = conv2(iy2,fsp, 'same');
sxy = conv2(ixy,fsp, 'same');

%sacar determinante de la imagen
k = 0.04;
trace = sx2.*sy2;
det= trace-sxy.^2;
R = det - k.*trace.^2;
R = abs(R)
%sacar umbral
m = max(R(:))

%tamaño de la imagen
[f,c] = size(Im);

%elimina valores menores al umbral
for i=1:f
    for j=1:c
        if R(i,j) < 1/100*m
            R(i,j) = 0;
        end
    end
end
%supresion de valores no maximos
%img = zeros(f+2,c+2);
%img(2:f+1,2:c+1)=R;
img = R
[f,c]=size(img);
for i=2:f-1
  for j=2:c-1
    %supresion de no maximos locales
    if max([img(i-1,j-1),img(i-1,j), img(i-1, j+1), img(i, j-1), img(i,j), img(i,j+1), img(i+1,j-1), img(i+1, j), img(i+1, j+1)]) > img(i,j)
      img(i,j)=0;
    end
  end
end
%im = img(2:end-1,2:end-1);
im = img
figure;
imshow(im)