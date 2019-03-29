function im = angulosNorma(gradiente)
gradiente = -2;
%convertir gradiente a grados
gradienteGrados = abs(rad2deg(gradiente));

im = gradienteGrados
end