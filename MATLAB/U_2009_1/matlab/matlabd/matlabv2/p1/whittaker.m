function [wh,fx,ns,vn]=whittaker(f,xo,n)

%wh: valor del cero función
%fx: vector de valores de f por iteracion
%ns: iteración en que se detiene
%vn: valores por iteración
syms x;
g=diff(f);
h=diff(g);
lf=lfx(f);
fn=x-(f/(2*g))*(2-lf);
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
wh=x;

