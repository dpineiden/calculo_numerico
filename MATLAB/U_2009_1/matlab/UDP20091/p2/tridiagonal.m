function tr=tridiagonal(A)
[m,n]=size(A);
for i=1:n
    for j=1:m
         if ( j <= i-2  | j >= i+2 ) 
        if A(i,j)==0   
                   tr='La matriz es tridiagonal';
        else 
                   tr='La matriz no es tridiagonal';
                    break
        end
         end
         
    end
end