function [to,no,co,fx]=traubostrowski(xo,f,n)
g=diff(f);
u=f/g;
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    go=eval(f);
    uo=eval(u);
    xo=x;
    syms x;
    x1=xo;
    co(:,i)=xo;
    x=xo-uo;
    f1=eval(f);
    xo=x1;
    syms x;
    x=xo-(uo)*(f1-fo)/(2*f1-fo);
    m=abs(x-xo)/abs(x);
    no=i;
    if m<=10^-10
        break
    end
end
to=x;
syms x;
x=to;
fx=eval(f);