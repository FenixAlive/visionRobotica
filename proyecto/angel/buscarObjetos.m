function [imFinal, dondeBuscar] = buscarObjetos(imOriginal, numMaximos)
% parametros de entrada 
% imOriginal: imagen  rgb a revisar
% numMaximos: cuantas posiciones con objetos
% regresa:
% imFinal: imagen con lineas para identificar los limites de los objetos
% dondeBuscar: regresa un array con las posiciones donde se encuentran los
% objetos divididas por sectores de 50x50px de la imagen
% La función recibe una imagen y te devuelve las esquinas de los objetos
% encontrados ademas de dividir la imagen en particiones cuadradas de 50x50
% pixeles y te dice en cuales de estas particiones hay un objeto para que
% puedas medir la distancia a ese objeto y esquivarlo.
imGris = rgb2gray(imOriginal);
h = ones(3)/9;
imFiltrada = uint8(conv2(imGris,h,'same'));
imReducida = imFiltrada(1:2:end,1:2:end);
[histo,~]=imhist(imReducida);
histo(1:5)=0;
histo(250:256)=0;
histoAcum = zeros(1,256);
histoAcum(1)=histo(1);
for i=2:length(histo)
    histoAcum(i)=histoAcum(i-1)+histo(i);
end
[r,c]=size(imReducida);
histoAcumNorma= histoAcum./(r*c);
m = 255;
n = 0;
imEcualizada = zeros(r,c,'uint8');
for i = 1:r
    for j = 1:c
        imEcualizada(i,j)=uint8(histoAcumNorma(imReducida(i,j)+1)*m+n);
    end
end
histoEcualizado=zeros(1,256);
for i = 1:r
    for j = 1:c
        histoEcualizado(imEcualizada(i,j)+1) = histoEcualizado(imEcualizada(i,j)+1)+1;
    end
end
imHDR = imReducida/2+imEcualizada/2;
imMediana = zeros(r,c);
for i = 1:r
    for j = 1:c
        H = imHDR(max(i-1, 1):min(i+1,r), max(j-1, 1):min(j+1, c));
        imMediana(i,j) = median(median(H));
    end
end
imMediana = uint8(imMediana);
rangoHiste = [.1, 0.33];
imCanny=edge(imMediana,'Canny', rangoHiste);
Se=[1 1 1 1 ;1 1 1 1 ;1 1 1 1;1 1 1 1];
imClosing = imclose(imCanny,Se);
filtroErosion = [1 1 1 1];
imErosion=imerode(imClosing,filtroErosion);
imBordes=imCanny-imErosion;
imOpen = imopen(imBordes,filtroErosion');
imFinal = imOpen;
%% Codigo para encontrar donde busca el robot
numEsquinas=100;
numCasillas=50;
esquinas = corner(imOpen,'Harris', numEsquinas);
casillas =floor([c r]./numCasillas)+[1 1];
votos = zeros(casillas);
votacion = floor(esquinas./numCasillas);
for i=1:numEsquinas
        votos(votacion(i,1)+1,votacion(i,2)+1)=votos(votacion(i,1)+1,votacion(i,2)+1)+1;
end
numMaximos = min([numMaximos, casillas(1)]);
indexMaximos = zeros(numMaximos,2);
for i=1:numMaximos
[maxc, indexc] = max(votos);
[~, indexf] = max(maxc);
indexMaximos(i,:)=[indexf, indexc(indexf)];
votos(indexMaximos(i,2), indexMaximos(i,1))=0;
end
dondeBuscar=indexMaximos;