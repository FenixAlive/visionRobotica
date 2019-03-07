
%imagen
I = [2 2 2 3; 2 1 3 3; 2 2 1 2; 1 3 2 2];
[fi,ci]=size(I);
%filtro a convolucionar
H = [5 -3 -2;4 2 -1; -4 3 1];
H = rot90(H,2);

Im = zeros(fi,ci);
for i = 1:fi
    for j = 1:ci
        for k = 1:3
            for l =1:3
                if(i+k-2 > 0 && i+k-2 <= fi)
                    if(j+l-2 > 0 && j+l-2 <= ci)
                        %los signos estan volteados por eso invertimos la H
                        Im(i,j) = Im(i,j)+I(i+k-2, j+l-2)*H(k,l);
                    end
                end
            end
        end
    end
end

Im
%conv2(I,H,'same') %para hacerlo con matlab sin voltear H