clear
x = [-2 0 1 -1 3];
h = [1 2 0 -1];
M = length(x);
N = length(h);

l = M+N-1;

y=zeros(1,l);
n=1;

for k = 0:l-1
    if n-k+1 > 0 && n-k+1 < N
        y(k+1)=y(k+1)+x(k+1)+h(n-k+1); %agregar +1 por estar en matlab
        %y=y+x(k+1)+h(n-k+1)
    end
end