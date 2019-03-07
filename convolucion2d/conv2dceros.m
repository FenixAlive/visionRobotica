%imagen
I = [2 2 2 3; 2 1 3 3; 2 2 1 2; 1 3 2 2];
[fi,ci]=size(I);
%filtro a convolucionar
H = [5 -3 -2;4 2 -1; -4 3 1];
[fj,cj]=size(H);
H = rot90(H,2);

Iz = [zeros(1,ci); I; zeros(1,ci)];
Iz = [zeros(fi+2,1) Iz zeros(fi+2,1)]
[fi,ci]=size(Iz);
Im = zeros(fi,ci);
for i = 2:fi-1
    for j = 2:ci-1
        for k = 1:fj
            for l =1:cj
                %los signos estan volteados por eso invertimos la H
                Im(i,j) = Im(i,j)+Iz(i+k-2, j+l-2)*H(k,l);
            end
        end
    end
end
Iz = Im
Im(:,end) = [];
Im(:,1) = [];
Im(end,:) = [];
Im(1,:) = [];
Im
H = rot90(H,2);
conv2(I,H,'same') %para hacerlo con matlab sin voltear H