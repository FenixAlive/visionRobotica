clear;
close all;


% imagen
vid = videoinput('linuxvideo', 1);
set(vid, 'ReturnedColorSpace', 'grayscale');

%umbrales por histerisis 
Fa = 0.033; %limite superior
Fb = 0.013; %limite inferior

% im = getsnapshot(vid);
% subplot(1,2,1);
% imshow(im)
% 
% im2 = getsnapshot(vid);
% subplot(1,2,2)
% imshow(im2)
% 
% imf = abs(im-im2);
% figure;
% imshow(imf)
masc = imread('./mascara.png');

try
    start(vid)
for i=1:0.1:3
    im = getsnapshot(vid);
    %im= abs(im-(255-masc));
    %imshow(im)
    imshow(canny(im, Fa, Fb));
    drawnow;
end
stop(vid);
delete(vid);
catch err
    disp(err)
    stop(vid);
    delete(vid);
end
