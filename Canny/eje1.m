close all;
clear;
%CANNY
%DERIVAR X Y Y

%CALCULAR EL GRADIENTE 
%MAGNITUD y angulo

%poner filtro suavizador gaussiana antes de derivar
%pero es mejor asociar las convoluciones
% Im*G*D

%Prewitt
 Hx =[-1 0 1; -1 0 1; -1 0 1];
 Hy =[-1 -1 -1; 0 0 0; 1 1 1];

%con gaussiana Sobel
% Hx = [-1 0 1; -2 0 2; -1 0 1]
% Hy = [-1 -2 -1; 0 0 0; 1 2 1]

im = zeros(350);
im(150:249,150:249)=255*ones(100);
% im = imread('/media/angel/Data/personal/fenix.jpg');
%im = imread('~/Dropbox/135ls.jpg');
%im = rgb2gray(im);
subplot(1,3,1)
imshow(im);
title("Imagen");

cx = conv2(im,Hx,'same');
cy = conv2(im,Hy, 'same');
magnitud = sqrt(cx.^2+cy.^2);
subplot(1,3,2);
imshow(magnitud);
title("Derivada");

gradiente=atan2(cy,cx);
subplot(1,3,3);
imshow(gradiente);
title("Gradiente");


%termina paso 1

%paso 2, maximos locales
