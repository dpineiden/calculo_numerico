function [pm,no,co,fx]=puntomedio(xo,f,n)
g=diff(f);
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    go=eval(g);
    xo=x;
    co(:,i)=xo;
    syms x;
    x1=xo;
    x=xo-fo/(2*go);
    g1=eval(g);
    xo=x1;
    syms x;
    x=xo-(fo/g1);
    m=abs(x-xo)/abs(x);
    no=i;
    if m<=10^-10
        break
    end
end
pm=x;
syms x;
x=pm;
fx=eval(f);