%leo la imagen con fondo verde
im = imread('antonio-de-felipe-audrey-con-pipa-fondo-verde.jpg');
imhsv = rgb2hsv(im);
%imshow(im)
h = 0.412;
s = 0.80;
v = 0.6;
% rango
rango = .3;

m = imhsv(:,:,1) > h-rango & imhsv(:,:,1) < h+rango ...
    & imhsv(:,:,2) > s-rango & imhsv(:,:,2) < s+rango ...
    & imhsv(:,:,3) > v-rango & imhsv(:,:,3) < v+rango;
m = ~m;
%pegar en nueva imagen
pp = imread('/media/angel/Data/personal/fotosPerfil/visionact2.jpg');
[fim,colim,ranim] = size(im);
[fipp,colpp,ranpp] = size(pp);

posx = fipp-fim;
posy = 15;
for i=1:fim
    for j=1:colim
        if m(i,j)
            pp(i+posx,j+posy,1:3)=im(i,j,1:3);
        end
    end
end
       
figure;
imshow(pp);



