I = imread('/media/angel/Data/imagenes/houseway.jpeg');
Ig = rgb2gray(I);
figure(1)
imshow(Ig);
title("Imagen Original");
h= histograma(Ig);
figure(2)
bar(h);
title("Histograma original")
n = normalizada(h,Ig);
figure(3)
bar(n);
title('Frecuencia Acumulada Normalizada')

[Ifin, hf]= ImEq(n,Ig,255,0);
figure(4);
imshow(Ifin);
title("Imagen Equalizada")
figure(5)
bar(hf);
title('Histograma final');
%HDR
Hdr = Ig/2+Ifin/2;
figure(6)
imshow(Hdr);