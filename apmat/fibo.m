function x = fibo(a)
if a < 1
    x= 0;
elseif a == 1
    x = 1;
else
    x = fibo(a-1)+fibo(a-2);
end