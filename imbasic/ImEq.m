function [Ie, hf] = ImEq(han,Ig,m,n)
    %ecualizar imagen
    [r,c]=size(Ig);
    Ie = zeros(r,c,'uint8');
    for i = 1:r
        for j = 1:c
            Ie(i,j)=uint8(han(Ig(i,j)+1)*m+n);
        end
    end

    %histograma final
    hf=zeros(1,256);
    for i = 1:r
        for j = 1:c
            hf(Ie(i,j)+1) = hf(Ie(i,j)+1)+1;
        end
    end
end