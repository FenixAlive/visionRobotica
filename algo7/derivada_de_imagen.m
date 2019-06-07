function [x, y] = derivada_de_imagen(im)
hx = [-1 0 1; -2 0 2; -1 0 1];
hy = hx';
x = conv2(im, hx, 'same');
y = conv2(im, hy, 'same');
end