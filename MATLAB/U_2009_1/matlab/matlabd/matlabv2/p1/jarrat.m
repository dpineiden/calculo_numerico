function [ja,fx,ns,vn]=jarrat(xo,f,n)
syms x;
g=diff(f);
u=f/g;
syms t;
t=x-(2/3)*u;
x=t;
g1=eval(g);
syms x;
fn=x-u*(.5)+f/(g-3*g1);
x=xo;
for i=1:1:n
    xo=x;
    vn(:,i)=xo;
    x=eval(fn);
    ee=abs(x-xo)/abs(x);
    ns=i;
    if ee<=10^-10
        break
    end
end
fx=eval(f);
ja=x;
