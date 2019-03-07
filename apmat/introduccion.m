clear
A = rand(3)*10

A(:)
%PROMEDIO POR COLUMNA
mean(A)
%MEDIANA POR COLUMNA
median(A)
%DE TODO
mean(A(:))
median(A(:))
sum(A(:))
%borrar un elemento
A(3, :) = []
%longitud mayor
length(A)
%tamaño de cada dimensión (fila, columna, tercer dim, cuarta dim)
[f,~] = size(A)
%ejemplos
ch = 'd';
num = 23;
prom = 87.2;
cad = 'Hola Robot';

archivo = fopen('archivo.txt','w');
fprintf(archivo,"%c\n",ch);
fprintf(archivo,'%d\n',num);
fprintf(archivo,'%f\n', prom);
fprintf(archivo,'%s\n', cad);
fclose(archivo);

%celdas
c = cell(2,3)
c{1,1}=1
