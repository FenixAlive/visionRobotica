function [ic, is] = conv2dm(im, fil)
im = double(im);
fil = double(fil);
%hacer convolucion rellenando con ceros la imagen
% no usar condicionales
%ic imagen filtrada con ceros
%is imagen filtrada sin ceros
[fi,ci]=size(im);
%filtro a convolucionar
[fj,cj]=size(fil);
fil = rot90(fil,2);

Iz = [zeros(1,ci); im; zeros(1,ci)];
Iz = [zeros(fi+2,1) Iz zeros(fi+2,1)];
[fi,ci]=size(Iz);
Im = zeros(fi,ci);
for i = 2:fi-1
    for j = 2:ci-1
        for k = 1:fj
            for l =1:cj
                %los signos estan volteados por eso invertimos la H
                Im(i,j) = Im(i,j)+Iz(i+k-fj-1, j+l-cj-1)*fil(k,l);
            end
        end
    end
end
ic = uint8(Im);
Im(:,end) = [];
Im(:,1) = [];
Im(end,:) = [];
Im(1,:) = [];
is = uint8(Im);
end
