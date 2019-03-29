im = imread('/home/angel/Dropbox/135ls.jpg');
im = rgb2gray(im);
figure(1)
im2=imnoise(im, 'salt & pepper', 0.05);
imshow(im2);
title("imagen con ruido")

%im2 = [1 2 3;4 5 6;7 8 9]

[fi,ci]=size(im2);
%filtro a convolucionar

Im = zeros(fi,ci);
for i = 1:fi
    for j = 1:ci
        H = [];
        for k = 1:3
            for l =1:3
                if(i+k-2 > 0 && i+k-2 <= fi)
                    if(j+l-2 > 0 && j+l-2 <= ci)
                        H(end+1) = im2(i+k-2, j+l-2);
                    end
                end
            end
        end
        Im(i,j) = median(H);
    end
end
Im = uint8(Im)
figure(2)
imshow(Im)
title("imagen sin ruido")