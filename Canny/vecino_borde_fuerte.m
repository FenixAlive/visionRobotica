function esFuerte = vecino_borde_fuerte(marca,Ta)
    if max(marca(:)) > Ta
        esFuerte = 1;
    else
        esFuerte = 0;
    end
end