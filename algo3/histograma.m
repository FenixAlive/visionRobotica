function h = histograma(Ig)
%recibe una imagen en escala de grises
 [r,c]=size(Ig);
    h=zeros(1,256);
    for i = 1:r
        for j = 1:c
            h(Ig(i,j)+1) = h(Ig(i,j)+1)+1;
        end
    end
end