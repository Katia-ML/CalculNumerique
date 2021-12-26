function [x1]=Richardson(A,b,x0,k)
m=size(A,"r")
x1=x0
for i=1:k
    for j=1:m
        x1(j) = ((b(j)-A(j,1:m)* x1 )* A(j,j)) + x1(j);
    end
end
endfunction
