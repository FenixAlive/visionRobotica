function im = orientacion_de_gradiente(x,y)
gradiente = atan2(y,x);
%convertir gradiente a grados
im = rad2deg(gradiente);
end