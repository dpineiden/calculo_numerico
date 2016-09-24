function [nn,no,co,fx]=newtonnewton(xo,f,n)
u=f/g;
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    go=eval(f);
    uo=eval(u);
    xo=x;
g=diff(f);
    co(:,i)=xo;
    syms x;
    x1=xo;
    x=xo-uo;
    f1=eval(f);
    g1=eval(g);
    xo=x1;
    syms x;
    x=xo-uo-f1/g1;
    m=abs(x-xo)/abs(x);
    no=i;
    if m<=10^-10
        break
    end
end
nn=x;
syms x;
x=nn;
fx=eval(f);