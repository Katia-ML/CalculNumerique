A=[7 2 0 0;
   2 7 2 0;
   0 2 7 2;
   0 0 2 7]
b=[12;32;10;27]
function [x]=jacobi(A,b)
    // Error tolerance
    tol=1e-6
    // Determine Matrix size
    [M,N]=size(A)
    if M~=N then
        disp("error A is not a square matrix"); 
    end
    // Verify if the diagonal elements are dominant in the matrix A
    for m=1:M
        row=abs(A(m,:))
        d=sum(row)-row(m)
        if row<=d
            disp("A is not diagonally dominant")
        end
     end
     // Initial guess
     x=ones(M,1) 
     // Calculate diagonal matrix
     D=diag(diag(A))
     // Main loop
     //error set to infinity
     err=%inf;
     while err > tol
         //    update x
         dx=D\(b-A*x)
         x=x+dx
         //compute error
         err=max(abs(dx./x))
     end
endfunction




