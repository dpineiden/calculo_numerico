function [nn,no,co]=newtonnewton(xo,f,n)
g=diff(f);
u=f/g;
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    go=eval(f);
    uo=eval(u);
    x1=xo;
    co(:,i)=xo;
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