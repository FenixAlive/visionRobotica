%rgb 0 a 255
%[row column color] = valor en ese color en esa fila y en esa columna
I = zeros(256, 256, 'uint8'); %hacer vector
for i=50:10:100
    for j=50:100
        I(i,j) = 133;
    end
end

imshow(I); %mostrar imagen
