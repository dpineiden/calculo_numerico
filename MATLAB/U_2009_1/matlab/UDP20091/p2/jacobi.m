function [jx,no]=jacobi(A,b,xo,n,h)
[L D U]=jacobildu(A);
for i=1:n
    x=D^(-1)*[b-(L+U)*xo];
    x1=xo;
    xo=x;
    m=norm(xo-x1,inf)/norm(x1,inf);
    no=i;
    if m<h^4
         break
    end
end
jx=xo;