function [sc,fx,ns,xn]=schroder(xo,f,n)
%sc: valor del cero funci�n
%fxc: vector de valores de f por iteracion
%ns: iteraci�n en que se detiene
%vn: valores por iteraci�n
syms x;
g=diff(f);
h=diff(g);
fn=x-f*g/(g^2-f*h);

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
sc=x;
