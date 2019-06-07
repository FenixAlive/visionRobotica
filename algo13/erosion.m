function imf = erosion(im, se)
% erosion todos los unos deben coincidir para eliminarlo
%erosión
% im = [0 0 0 0 0; 0 1 1 1 0; 0 1 1 1 0; 0 1 1 1 0; 0 0 0 0 0];
% se = [0 1 0; 1 1 1; 0 1 0];
[ff, fc] = size(se);
ft = floor((ff-1)/2);
im = padarray(im,[ft ft]);
[f, c] = size(im);
imf = zeros(f-ft*2,c-ft*2);
for i= 2:f-ft
    for j = 2:c-ft
        ero = im(i-ft:i+ft,j-ft:j+ft).*se;
        val = 1;
        for k = 1:ff
            for l = 1:fc
                if se(k,l)
                    if ero(k,l) == 0
                        imf(i-ft,j-ft)=0;
                        val = 0;
                    end
                end
            end
        end
        if val
            imf(i-ft,j-ft)=1;
        end
    end
end
end