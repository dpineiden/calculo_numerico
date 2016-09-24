function [jx,no]=jacobi(A,b,xo,n)
[L D U]=jacobildu(A);
for i=1:n
    x=D^(-1)*[b-(L+U)*xo];
    x1=xo;
    xo=x;
    m=norm(xo-x1)/norm(x1);
    no=i;
    if m<=10^-7
         break
    end
end
jx=xo;