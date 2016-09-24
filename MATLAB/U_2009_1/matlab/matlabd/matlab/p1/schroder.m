function [sc,no,co,fx]=schroder(xo,f,n)
g=diff(f);
h=diff(g);
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    go=eval(g);
    ho=eval(h);
    xo=x;
    co(:,i)=xo;
    syms x;
    x=xo-fo*go/(go^2-fo*ho);
    m=abs(x-xo)/abs(x);
    no=i;
    if m<=10^-10
        break
    end
end
sc=x;
syms x;
x=sc;
fx=eval(f);