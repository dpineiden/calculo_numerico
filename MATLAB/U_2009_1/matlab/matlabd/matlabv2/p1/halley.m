function [ha,fx,ns,vn]=halley(f,xo,n)
%ha: valor del cero funci�n
%fx: vector de valores de f por iteracion
%ns: iteraci�n en que se detiene
%vn: valores por iteraci�n
syms x;
g=diff(f);
h=diff(g);
fn=x-2*f*g/(2*g^2 - f*h);
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
ha=x;