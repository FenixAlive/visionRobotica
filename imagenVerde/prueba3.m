%leo la imagen con fondo verde
im = imread('/home/angel/Documentos/fotosvision/sabanami.png');
imhsv = rgb2hsv(im);
%figure(1);
%imshow(imhsv)
hmin = 0.034;
hmax = 0.597;
smin = 0.0;
smax = 0.623;
vmin = 0.075;
vmax = 0.85;

m = imhsv(:,:,1) > hmin & imhsv(:,:,1) < hmax ...
    & imhsv(:,:,2) > smin & imhsv(:,:,2) < smax ...
    & imhsv(:,:,3) > vmin & imhsv(:,:,3) < vmax;
m = ~m;
%figure(3)
%imshow(m)
%pegar en nueva imagen
pp = imread('/home/angel/Documentos/fotosvision/fondocuadro.jpg');
[fim,colim,ranim] = size(im);
[fipp,colpp,ranpp] = size(pp);

posx = fipp-fim-fipp+2657;
posy = 1537;
%posx=0;
%posy=0;
%pp = zeros(fim,colim,3,'uint8');
for i=1:fim
    for j=1:colim
        if m(i,j)
            pp(i+posx,j+posy,:)=im(i,j,:);
        end
    end
end
       
figure(4);
imshow(pp);
