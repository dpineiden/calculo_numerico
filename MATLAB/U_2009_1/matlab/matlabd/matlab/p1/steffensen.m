function [ste,no,co,fx]=steffensen(xo,f,n)
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    xo=x;
    co(:,i)=xo;
    x1=xo;
    syms x;
    x=xo+fo;
    f1=eval(f);
    xo=x1;
    syms x;
    x=xo-(fo^2/(f1-fo));
    m=abs(x-xo)/abs(x);
    no=i;
    if m<=10^-10
        break
    end
end
ste=x;
syms x;
x=ste;
fx=eval(f);