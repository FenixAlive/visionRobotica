function s = sumGeom(r,n)
s=0;
for i=0:n
    s=s+r^(i);
end
%     if n < 2
%         s = r.^1+1;
%     else
%         s = r.^n + sumGeom(n-1,r);
%     end
end