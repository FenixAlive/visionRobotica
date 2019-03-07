clear;

x = [-2 0 1 -1 3];
kx=0:4;

h = [1 2 0 -1];
k = 0:3;

figure;
subplot(4,1,1)
hold on;
stem(flip(-k),flip(h),':');
stem(0:4,x,'r');


subplot(4,1,2)
hold on;
stem(1+flip(-k),flip(h),':');
stem(0:4,x,'r');

subplot(4,1,3)
hold on;
stem(2+flip(-k),flip(h),':');
stem(0:4,x,'r');

subplot(4,1,4)
hold on;
stem(4+flip(-k),flip(h),':');
stem(0:4,x,'r');