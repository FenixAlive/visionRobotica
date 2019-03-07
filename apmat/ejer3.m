format short
%con for
for i = -3:.5:3
    y = i^2+2*i-1;
    fprintf('|\t %d\t |\t%d\t|\n',i,y);
end
j = -3:.5:3;
y = j.^2+2.*j-1;
[j' y']