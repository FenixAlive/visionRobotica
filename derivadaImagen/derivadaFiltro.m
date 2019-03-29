im = imread('/media/angel/Data/personal/fenix.jpg');
im = rgb2gray(im);
imshow(im);
hx = [-1 1];
hy = hx';
% hare correlacion por lo cual se hace flip del filtro
hcx = flip(hx);
hcy = flip(hy);
%im = zeros(5);
%im(2:4,2:4)=255*ones(3);
%negar convolución
cx=-conv2(im, hcx,'same');
cy=-conv2(im, hcy,'same');
%sacar absoluto
figure;
imshow(abs(cx)/2+abs(cy)/2);

