%deteccion de bordes
close;
im = imread('silueta2.png');
figure;
imshow(im);
se = [0 1 0; 1 1 1; 0 1 0];
%erosión
im2 = imerode(im,se);
%diferencia
im = im-im2;
figure;
imshow(im);
