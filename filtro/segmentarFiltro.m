r = 400
c = 400
Im = zeros(r,c,3,'uint8')

Imr = insertShape(Im,'FilledCircle',[150 180 70],'Color',[100 0 0]);
Ir = Imr(:,:,1)*255;
Img = insertShape(Im,'FilledCircle',[250 180 70],'Color',[0 100 0]);
Ig = Img(:,:,2)*255;
Imb = insertShape(Im,'FilledCircle',[200 280 70],'Color',[0 0 100]);
Ib = Imb(:,:,3)*255;
Im(:,:,1) = Ir;
Im(:,:,2) = Ig;
Im(:,:,3) = Ib;
figure(1);
imshow(Im)
Im2 = zeros(400,400,'uint8');
% Imprimir rojo
for i=1:r
    for j=1:c
        if Im(i,j,1) && ~Im(i,j,2) && ~Im(i,j,3)
            Im2(i,j)=Im(i,j,1);
        end
    end
end
figure(2)
imshow(Im2)
Im3 = zeros(400,400,'uint8');
% Imprimir verde
for i=1:r
    for j=1:c
        if ~Im(i,j,1) && Im(i,j,2) && ~Im(i,j,3)
            Im3(i,j)=Im(i,j,2);
        end
    end
end
figure(3)
imshow(Im3)
Im4 = zeros(400,400,'uint8');
% Imprimir blue
for i=1:r
    for j=1:c
        if ~Im(i,j,1) && ~Im(i,j,2) && Im(i,j,3)
            Im4(i,j)=Im(i,j,3);
        end
    end
end
figure(4)
imshow(Im4)
% Imprimir blanco
Im5 = zeros(400,400,'uint8');
for i=1:r
    for j=1:c
        if Im(i,j,1) && Im(i,j,2) && Im(i,j,3)
            Im5(i,j)=Im(i,j,1)+Im(i,j,2)+Im(i,j,3);
        end
    end
end
figure(5)
imshow(Im5)
