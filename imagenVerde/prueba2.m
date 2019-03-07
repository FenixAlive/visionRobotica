
%leo la imagen con fondo verde
im = imread('/media/angel/Data/personal/fotosPerfil/visionact2.jpg');
%im = imread('antonio-de-felipe-audrey-con-pipa-fondo-verde.jpg');
imhsv = rgb2hsv(im);
imshow(imhsv);

rango = 0.1;
h = 0.05637;
h = [h-rango, h+rango];
s = 0.7312;
s = [s-rango, s+rango];
v = 0.3647;
v= [v-rango, v+rango];

m = mask(imhsv,h,s,v);
m = m & mask(imhsv,[0.07843-rango, 0.07843+rango],[.4146-rango, .4146+rango],[.6431-rango, .6431+rango]);
pp = imread('/media/angel/Data/personal/fotosPerfil/visionact2.jpg');
[fim,colim,ranim] = size(im);
[fipp,colpp,ranpp] = size(pp);

posx = fipp-fim;
posy = 0;
for i=1:fim
    for j=1:colim
        if m(i,j)
            pp(i+posx,j+posy,1:3)=0;%im(i,j,1:3);
        end
    end
end
       
figure;
imshow(pp);


function m = mask(imhsv,h,s,v)
m = imhsv(:,:,1) > h(1) & imhsv(:,:,1) < h(2) ...
    & imhsv(:,:,2) > s(1) & imhsv(:,:,2) < s(2) ...
    & imhsv(:,:,3) > v(1) & imhsv(:,:,3) < v(2);
m = ~m;
end

