function [ha,fx,ns,xn]=halley(xo,f,n)
%ha: valor del cero funci�n
%fx: vector de valores de f por iteracion
%ns: iteraci�n en que se detiene
%vn: valores por iteraci�n
syms x;
g=diff(f);
h=diff(g);
fw=x-2*int(diff(f))*g/(2*g^2-f*h);

xn(1)=xo;
for i=1:1:n
    x=xn(i);
    xn(i+1)=eval(fw);
    ee=abs(xn(i+1)-xn(i))/abs(xn(i));
    ns=i;
    if ee<=10^-10
        break
    end
end
x=xn(ns+1);
fx=eval(f);
ha=x;