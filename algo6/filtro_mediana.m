function Im = filtro_mediana(im, tam)
[fi,ci]=size(im);
%filtro a convolucionar
fil = (tam-1)/2;

Iz = [zeros(fil,ci); im; zeros(fil,ci)];
Iz = [zeros(fi+fil*2,fil) Iz zeros(fi+fil*2,fil)];
[fi,ci]=size(Iz);

Im = zeros(fi,ci);
for i = fil+1:fi-fil
    for j = fil+1:ci-fil
        %H = im(max(i-fil, 1):min(i+fil,fi), max(j-fil, 1):min(j+fil, ci));
        H = Iz(i-fil:i+fil, j-fil:j+fil);
        R=[H(:)]';
        Im(i,j) = median(R);
    end
end
Im = Im(fil+1:end-fil, fil+1:end-fil);
Im = uint8(Im);
end