function [L U]=gausssiedellu(A)
[m,n]=size(A)
p=0;
q=0;
for i=1:m
    for j=1:n
           %p
            for k=(i-1):-1:1
                p=p+L(i,k)*U(k,j)
            end
            %q
            for k=(j-1):-1:1
                q=q+L(i,k)*U(k,j)
            end
        if i==j
            L(i,j)=1;
            U(i,j)=A(i,j)-p
        elseif j>i
            L(i,j)=0;
            U(i,j)=A(i,j)-p
        elseif j<i
            L(i,j)=(1/U(j,j))*(A(i,j)-q)
            U(i,j)=0;
        end
            
    end
end

