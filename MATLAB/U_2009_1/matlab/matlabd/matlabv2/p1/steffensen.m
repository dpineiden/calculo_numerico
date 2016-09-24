function [ste,fx,ns,vn]=steffensen(f,xo,n)
%ste: valor del cero función
%fx: vector de valores de f por iteracion
%ns: iteración en que se detiene
%vn: valores por iteración
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    xo=x;
    vn(:,i)=xo;
    x1=xo;
    syms x;
    x=xo+fo;
    f1=eval(f);
    xo=x1;
    syms x;
    x=xo-(fo^2/(f1-fo));
    ee=abs(x-xo)/abs(x);
    ns=i;
    if ee<=10^-10
        break
    end
end
ste=x;
syms x;
x=ste;
fx=eval(f);