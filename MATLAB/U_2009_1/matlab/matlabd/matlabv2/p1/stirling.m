function [st,fx,ns,vn]=stirling(f,xo,n)
%st: valor del cero funci�n
%fx: vector de valores de f por iteracion
%ns: iteraci�n en que se detiene
%vn: valores por iteraci�n
syms x;
g=diff(f);
x=xo;
for i=1:1:n
    fo=eval(f);
    xo=x;
    vn(:,i)=xo;
    x1=xo; 
    syms x;
    x=xo-fo;
    g1=eval(g);
    xo=x1;    
    syms x;
    x=xo-(fo/g1);
    ee=abs(x-xo)/abs(x);
    ns=i;
    if ee<=10^-10
        break
    end
end
st=x;
syms x;
x=st;
fx=eval(f);