i = imread('~/Dropbox/135ls.jpg');
i = rgb2gray(i);
i = double(i);
f1 = (1/25)*[1 1 1 1 1;1 1 1 1 1;1 1 1 1 1];
gauss = [1 2 1; 2 4 2; 1 2 1];
c = conv2(i,gauss,'same');
%falta normalizar
c = uint8(c);
imshow(c);