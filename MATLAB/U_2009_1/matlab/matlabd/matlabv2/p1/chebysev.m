function [ch,fx,ns,vn]=chebysev(xo,f,n)
%ch: valor del cero funci�n
%fxc: vector de valores de f por iteracion
%ns: iteraci�n en que se detiene
%vn: valores por iteraci�n
syms x;
g=diff(f);
lfx=lefx(f);
fn=x-(f/g)*(1+lfx/2);

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
ch=x;