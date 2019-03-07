Im = imread('peppers.png')
[r,c,range]=size(Im);
figure(1)
imshow(Im);
Im2 = zeros(r,c,'uint8');
% Imprimir rojo
R = 200;
G = 35;
B = 41;
d = 70;
rmax = R+d;
rmin = R-d;
gmax = G+d;
gmin = G-d;
bmax = B+d;
bmin = B-d;
for i=1:r
    for j=1:c
        if Im(i,j,1) < rmax &&  Im(i,j,1) > rmin  
            if Im(i,j,2) < gmax &&  Im(i,j,1) > gmin  
                if Im(i,j,3) < bmax &&  Im(i,j,3) > bmin 
                    Im2(i,j)=Im(i,j);
                end
            end
        end
    end
end
figure(2)
imshow(Im2);
Im2 = ~Im2;
mask = cat(3,Im2,Im2,Im2);
Im(mask)=0;
figure(3)
imshow(Im)