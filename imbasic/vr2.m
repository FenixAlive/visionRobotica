I1 = imread('/home/angel/Dropbox/proyectos/diseno-web/Tisana/img/imagen6.jpg');
%una forma de corregir la sobresaturación seria convertir la imagen a int32
%uint32(I1)
%otra forma de hacer la conversion a escala de grises es usar una
%ponderacion a cada uno de los colores c= .25*r+.5*g+.25*b
%figure(1);
title("Imagen Original");
%imshow(I1);
[r,c,rgb] = size(I1);
Ifin = zeros(r,c,'uint8');
for i=1:r
    for j=1:c
        Ifin(i,j) = I1(i,j,1)/3+I1(i,j,2)/3+I1(i,j,3)/3;
        %Ifin(i,j)=sum(I1(i,j,:))/3;
    end
end
%figure(2);
title("Imagen Promedio Escala de grises");
%imshow(Ifin);
%conversión a blanco y negro
umbral = 100
for i=1:r
    for j=1:c
        if Ifin(i,j)>umbral
            Ifin(i,j)=255;
        else
            Ifin(i,j)=0;
        end
    end
end
    figure(3);
    imshow(Ifin);
    title('Imagen Blanco y negro');
            