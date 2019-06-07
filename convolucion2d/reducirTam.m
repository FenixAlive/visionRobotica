im = imread('~/Dropbox/135ls.jpg');
im = rgb2gray(im);
H = ones(3)/9;
gauss = [1 2 1;2 4 2;1 2 1];
gauss = gauss/sum(sum(gauss));

ic = conv2(im,H,'same');
ifin = ic(1:2:end,1:2:end);
ifin = uint8(ifin);
figure;
imshow(ifin);
title('Filtro Promedio')


im = conv2(im,gauss,'same');
ifin = im(1:2:end,1:2:end);
ifin = uint8(ifin);
figure;
imshow(ifin);
title('Filtro Gauss')

            
