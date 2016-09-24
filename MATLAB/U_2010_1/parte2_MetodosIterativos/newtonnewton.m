function [nn,fx,ns,xn]=newtonnewton(xo,f,n)
%nn: valor del cero funci�n
%fx: vector de valores de f por iteracion
%ns: iteraci�n en que se detiene
%vn: valores por iteraci�n
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

xn(1)=xo;
for i=1:1:n
    x=xn(i);
    xn(i+1)=eval(fn);
    ee=abs(xn(i+1)-xn(i))/abs(xn(i));
    ns=i;
    if ee<=10^-10
        break
    end
end
x=xn(ns+1);
fx=eval(f);
nn=x;
