clear;
close all;
addpath('../algo6');
addpath('../imbasic');

%umbrales por histerisis 
Fa = 0.033; %limite superior
Fb = 0.013; %limite inferior

% imagen
vid = videoinput('linuxvideo', 1);
set(vid, 'ReturnedColorSpace', 'grayscale');

im = getsnapshot(vid);
%im = filtro_mediana(im, 3);
%h = histograma(im);
%n = normalizada(h,im);
%im= ImEq(n,im,255,0);

subplot(1,2,1);
imshow(im);
%im = imread('~/Dropbox/135ls.jpg');
%im = rgb2gray(im);
subplot(1,2,2);
imshow(canny(im, Fa, Fb));

delete(vid);
