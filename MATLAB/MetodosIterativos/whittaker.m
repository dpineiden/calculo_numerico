function [wh,no,co]=whittaker(xo,f,n)
g=diff(f);
h=diff(g);
lfx=lefx(f);
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    go=eval(g);
    ho=eval(h);
    lfxo=eval(lfx);
    xo=x;
    co(:,i)=xo;
    syms x;
    x=xo-(fo/(2*go))*(2-lfxo);
    m=abs(x-xo)/abs(x);
    no=i;
    if m<=10^-10
        break
    end
end
wh=x;