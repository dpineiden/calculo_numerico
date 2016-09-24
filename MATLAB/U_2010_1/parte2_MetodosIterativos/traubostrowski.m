function [to,fx,ns,xn]=traubostrowski(xo,f,n)
%to: valor del cero funci�n
%fx: vector de valores de f por iteracion
%ns: iteraci�n en que se detiene
%vn: valores por iteraci�n
syms x;
g=diff(f);
u=f/g;
syms t;
t=x-u;
x=t;
f;
f1=eval(f);
syms x
fn=x-u*(f1-f)/(2*f1-f);

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
to=x;
