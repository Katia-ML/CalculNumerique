function [v]= produitMV2(A,x)
    v=zeros(n,1)
    for i=1:n
        for j=1:m
            v(i,1)=v(i,1)+A(i,j)*x(j);
        end
    end
endfunction
