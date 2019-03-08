function is = conv2dm(im, fil)
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
tcf=(fj-1)/2;
tcc=(cj-1)/2;
Iz = [zeros(tcf,ci); im; zeros(tcf,ci)];
Iz = [zeros(fi+tcf*2,tcc) Iz zeros(fi+tcf*2,tcc)]
[fi,ci]=size(Iz);
Im = zeros(fi,ci);
ti = tcf+1
tj = tcc+1
for i = ti:fi-ti+1
    for j = tj:ci-tj+1
        for k = 1:fj
            for l =1: cj
                %los signos estan volteados por eso invertimos la H
                Im(i,j) = Im(i,j)+Iz(i+k-ti, j+l-tj)*fil(k,l);
            end
        end
    end
end
Im
Im = Im(ti:end-ti+1,tj:end-tj+1);
is = uint8(Im);
end
