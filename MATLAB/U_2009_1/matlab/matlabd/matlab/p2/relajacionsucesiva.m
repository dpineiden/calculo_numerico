function [sor,no]=relajacionsucesiva(A,b,xo,n)
[L,D,U]=jacobildu(A);
Q=D^(-1)*(L+U);
rho=max(eig(Q));
w =2/(1+(1-rho^2)^(1/2));
D1=(1/w)*D;
D2=(w-1)/w*D;
%A=D1+L+D2+U
M=D1+L;
N=D2+U;
%M*x^(n+1)=N*x^(n)+b
Mn=M^(-1)*N;
c=M^(-1)*b;
for i=1:n
    x=-Mn*xo+c;
    x1=xo;
    xo=x;
    m=norm(xo-x1)/norm(x1);
    no=i;
    if m<=10^-7
        break
    end
end
sor=x;