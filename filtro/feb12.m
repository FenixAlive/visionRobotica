% Im = zeros(100,100,3,'uint8');
% Im(30:60,30:60,2)=255;
% Im(30:60,30:60,2)=200;
% imshow(Im)
%I = imread('/home/angel/Dropbox/proyectos/diseno-web/Fres/img/templo.jpg');
%Im = imread('/home/angel/Dropbox/135ls.jpg');
Im = zeros(400,400,3,'uint8');
Imr = insertShape(Im,'FilledCircle',[150 180 70],'Color',[100 0 0]);
Ir = Imr(:,:,1)*255;
Img = insertShape(Im,'FilledCircle',[250 180 70],'Color',[0 100 0]);
Ig = Img(:,:,2)*255;
Imb = insertShape(Im,'FilledCircle',[200 280 70],'Color',[0 0 100]);
Ib = Imb(:,:,3)*255;
%Im(:,:,1)=0;
%Im(:,:,2)=0;
%If = Ir+Ig+Ib;
Im(:,:,1) = Ir;
Im(:,:,2) = Ig;
Im(:,:,3) = Ib;
imshow(Im)
