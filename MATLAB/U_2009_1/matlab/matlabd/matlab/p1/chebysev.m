function [ch,no,co,fx]=chebysev(xo,f,n)
g=diff(f);
lfx=lefx(f);
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    go=eval(g);
    lfxo=eval(lfx);
    xo=x;
    co(:,i)=xo;
    syms x;
    x=xo-(fo/go)*(1+lfxo/2);
    m=abs(x-xo)/abs(x);
    no=i;
    if m<=10^-10
        break
    end
end
ch=x;
syms x;
x=ch;
fx=eval(f);