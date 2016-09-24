function [pm,no,co]=puntomedio(xo,f,n)
g=diff(f);
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    go=eval(f);
    co(:,i)=xo;
    x1=xo;
    x=xo-fo/(2*go);
    g1=eval(g);
    xo=x1;
    syms x;
    x=xo-(fo^2/(go-fo));
    m=abs(x-xo)/abs(x);
    no=i;
    if m<=10^-10
        break
    end
end
pm=x;