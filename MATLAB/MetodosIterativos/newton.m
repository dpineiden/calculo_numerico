function [Xc,no,co]=newton(xo,f,n)
g=diff(f);
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    go=eval(g);
    xo=x;
    co(:,i)=xo;
    syms x;
    x=xo-fo/go;
    m=abs(x-xo)/abs(x);
    no=i;
    if m<=10^-10
        break
    end
end
Xc=x;