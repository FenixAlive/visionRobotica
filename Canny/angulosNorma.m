function im = angulosNorma(gradiente)
%convertir gradiente a grados
gradienteGrados = abs(rad2deg(gradiente));
gradienteGrados = mod(gradienteGrados, 180);
if gradienteGrados < 22.5 || gradienteGrados > 157.5
  im = 0;
elseif gradienteGrados >= 22.5 && gradienteGrados < 77.5
  im = 45;
elseif gradienteGrados >= 77.5 && gradienteGrados < 112.5
  im = 90;
elseif gradienteGrados >= 112.5 && gradienteGrados <= 157.5
  im = 135;
end

end
