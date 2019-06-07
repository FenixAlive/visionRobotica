function imf = dilatacion(im, se)
% dilatacion si coincide uno de los filtros se pone un uno
%dilatacion
% im = [0 0 0 0 0; 0 1 1 1 0; 0 1 0 1 0; 0 1 1 1 0; 0 0 0 0 0];
% se = [0 1 0; 1 1 1; 0 1 0];
ff = length(se);
ft = (ff-1)/2;
im = padarray(im,[ft ft]);
[f, c] = size(im);
imf = zeros(f-ft*2,c-ft*2);
for i= 1+ft:f-ft
    for j = 1+ft:c-ft
        dila = im(i-ft:i+ft,j-ft:j+ft).*se;
        dila = max(dila(:));
        imf(i-ft,j-ft)=dila;
    end
end
end
