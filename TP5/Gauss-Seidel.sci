A=[7 2 0 0;
   2 7 2 0;
   0 2 7 2;
   0 0 2 7]
b=[12;32;10;27]
function [x]=GaussSeidel(A,b)
    [M,N]=size(A)
    //number of iterations
    n=100
    // error tolerance
    tol=1e-6
    // fist guess
    x=zeros(N,1)
    //History
    xx(1,:)=x
    for k=2:n
        for i=1:M
            s=0
            for j=1:N
                if j~=i then 
                    s=s+A(i,j)*x(j)
                end
            end
            x(i)=(1/A(i,i))*(b(i)-s)
        end
        xx(k,:)=x
        err=abs(max(xx(k,:)-xx(k-1,:)))
        if err<tol then 
            break
        end
end
endfunction


