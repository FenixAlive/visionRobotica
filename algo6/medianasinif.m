function Im = filtro_mediana(im, tam)
[fi,ci]=size(im);
%filtro a convolucionar
fil = (tam-1)/2;

Im = zeros(fi,ci);
for i = 1:fi
    for j = 1:ci
        H = im(max(i-fil, 1):min(i+fil,fi), max(j-fil, 1):min(j+fil, ci));
        R=[H(:)]';
        Im(i,j) = median(R);
    end
end
Im = uint8(Im);
end