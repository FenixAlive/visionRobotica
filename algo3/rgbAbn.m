function bn = rgbAbn(im, umbral)
%debo ver si el umbral quiere de 0 a 1 o de 0 a 255
%veo tamaño de imagen
[f,c,~] = size(im);
bn = zeros(f,c,'uint8');
for i=1:f
    for j=1:c
        if sum(im(i,j,:))/3 > umbral
            %se puede cambiar el valor a 255 u otro a conveniencia
            bn(i,j)=255;
        end
    end
end
end