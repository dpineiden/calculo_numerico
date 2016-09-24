function [st,no,co,fx]=stirling(xo,f,n)
syms x;
g=diff(f);
x=xo;
for i=1:1:n
    fo=eval(f);
    xo=x;
    co(:,i)=xo;
    x1=xo; 
    syms x;
    x=xo-fo;
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
st=x;
syms x;
x=st;
fx=eval(f);