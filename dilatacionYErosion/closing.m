%closing
close;
im = imread('silueta2.png');
figure;
imshow(im);
se = [0 1 0; 1 1 1; 0 1 0];
%dilatacion
im = imdilate(im,se);
%erosión
im = imerode(im,se);
figure;
imshow(im);
