function [pm,fx,ns,vn]=puntomedio(f,xo,n)
%pm: valor del cero función
%fx: vector de valores de f por iteracion
%ns: iteración en que se detiene
%vn: valores por iteración
syms x;
syms t;
g=diff(f);
t=x-.5*f/g;
x=t;
g1=eval(g);
syms x;
fn=x-f/g1;
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
pm=x;
