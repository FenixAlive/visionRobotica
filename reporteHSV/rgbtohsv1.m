clear
%Leo la imagen
I = imread('/home/angel/Dropbox/proyectos/diseno-web/Fres/img/templo.jpg');
% Tomo el tamaño de la imagen
[r,c,color]=size(I);
%Guardo el valor de escala de RGB
scale = 255;
%Veo como sale la imagen con el programa de matlab
hsvMatlab=rgb2hsv(I);
%Creo la matriz para guardar la imagen HSV
hsv = zeros(r,c,color);

%recorro las filas de la imagen
for i=1:r
    %recorro las columnas de la imagen
    for j=1:c
        %guardo los colores del pixel normalizados en una variable
        rgb = zeros(1,3);
        for k=1:3
            rgb(k) = double(I(i,j,k))/scale;
        end
        %Tomo el valor mayor de los 3 colores y su indice
        [mmax,imax]=max(rgb);
         %Tomo el valor menor de los 3 colores y su indice
        [mmin,imin]=min(rgb);
        %Hago la diferencia entre el valor mayor y el menor
        dif=mmax-mmin;
        %Hago las condiciones para encontrar el valor de H
        if imax == 1
            H = (rgb(2)-rgb(3))/dif;
        elseif imax == 2
            H = ((rgb(3)-rgb(1))/dif)+2;
        elseif imax == 3
            H = ((rgb(1)-rgb(2))/dif)+4;
        else
            H = nan;
        end
        if H < 0 || H > 6
            H = mod(H,6);        
        end
        %divido H entre su escala que es 6
        hsv(i,j,1) = H/6; %H
        
        %Guardo el valor de V por su escala que es 1
        hsv(i,j,3) = mmax*1; %V
        
        %reviso si V es igual a cero o no para dar valor a S
        if ~hsv(i,j,3)
            hsv(i,j,2) = 0; %S
        else
            hsv(i,j,2) = dif/mmax*1;
        end
    end
end

%veo diferencias entre mi conversión y la de matlab
dif = [];
for i =1:r
    for j =1:c
        for k =1:3
            dd = round(hsv(i,j,k)-hsvMatlab(i,j,k), 10);
            if dd ~= 0 && dd == NaN
                dif = [dif; i j k dd];
            end
        end
    end
end
%imprimo diferencias
dif

%imprimo las dos imagenes
figure(1)
subplot(1,2,1)
imshow(hsv)
subplot(1,2,2)
imshow(hsvMatlab)