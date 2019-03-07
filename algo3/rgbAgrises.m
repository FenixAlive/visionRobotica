function g = rgbAgrises(im)
%veo el tamaño de la imagen    
[f,c,m] = size(im);
%hago lienzo en blanco
g = zeros(f,c, 'uint8');
% hago el promedio de los colores y lo pongo en la nueva escala de gris
for i=1:f
    for j=1:c
        g(i,j)=sum(im(i,j,:))/3;
    end
end
end