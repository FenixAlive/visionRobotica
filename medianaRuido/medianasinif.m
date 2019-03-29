clear
im = imread('/home/angel/Dropbox/135ls.jpg');
im = rgb2gray(im);
figure(1)
im2=imnoise(im, 'salt & pepper', 0.05);
imshow(im2);
title("imagen con ruido")



[fi,ci]=size(im2);
%filtro a convolucionar

Im = zeros(fi,ci);
for i = 1:fi
    for j = 1:ci
        H = im2(max(i-1, 1):min(i+1,fi), max(j-1, 1):min(j+1, ci));
        Im(i,j) = median(median(H));
    end
end
Im = uint8(Im)
figure(2)
imshow(Im)
title("imagen sin ruido")