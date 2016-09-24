function [gs,no]=gausssiedel(A,b,xo,N)
[m,n]=size(A);
for k=1:N
    x1=xo;
    for i=1:m
        for j=1:n
            Ax=[A(j,1:j-1) 0 A(j,j+1:n)];
            if j==i
            xo(j)=(b(j)-Ax*xo)/A(j,j);
            else
            xo(j)=xo(j);% subiteracion xi^n=xi^(n-1)
            end
        end
    end
    x2=xo;%una iteracion completa
    mx=norm(x2-x1)/norm(x1);%se obtiene valor que compara y detiene si cumple condicion
    no=k;    
    if mx<=10^-7        
        break
    end
end
gs=xo;