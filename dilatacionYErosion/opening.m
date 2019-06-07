%opening
close;
im = imread('silueta2.png');
figure;
imshow(im);
se = [0 1 0; 1 1 1; 0 1 0];
%erosión
im = imerode(im,se);
%dilatacion
im = imdilate(im,se);
figure;
imshow(im);
