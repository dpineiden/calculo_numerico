function [nn,fx,ns,vn]=newtonnewton(f,xo,n)
%nn: valor del cero función
%fx: vector de valores de f por iteracion
%ns: iteración en que se detiene
%vn: valores por iteración
syms x;
g=diff(f);
u=f/g;
syms t;
t=x-u;
x=t;
g1=eval(g);
f1=eval(f);
syms x;
fn=x-u-f1/g1;
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
nn=x;
