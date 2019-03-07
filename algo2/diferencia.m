function v = diferencia(u)
v =[];
for i=1:length(u)-1
    v(end+1)=u(i+1)-u(i);
end
v(end+1)=0;
end