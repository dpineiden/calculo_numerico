function [Xc,fx,ns,vn]=newton(f,xo,n)
%Xc: valor del cero función
%fxc: vector de valores de f por iteracion
%ns: iteración en que se detiene
%vn: valores por iteración
syms x;
g=diff(f);
fn=x-f/g;
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
Xc=x;
