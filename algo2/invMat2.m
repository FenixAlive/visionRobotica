function inv = invMat2(m)
det = m(1,1)*m(2,2)-m(1,2)*m(2,1);
adj = [m(2,2), -m(1,2); -m(2,1), m(1,1)];
inv = adj./det;
end