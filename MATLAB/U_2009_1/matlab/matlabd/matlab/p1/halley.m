function [ha,no,co,fx]=halley(xo,f,n)
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
    x=xo-2*fo*go/(2*go^2 - fo*ho);
    m=abs(x-xo)/abs(x);
    no=i;
    if m<=10^-10
        break
    end
end
ha=x;
syms x;
x=ha;
fx=eval(f);