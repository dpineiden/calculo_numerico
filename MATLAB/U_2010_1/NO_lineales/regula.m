function  [L,fr] = regula(fun,x0,x1,tol)
% Aproxima por el método  de la secante una raíz de la ecuación fun(x)=0
syms x;
disp('Método de la bisección');
x=x0;
fr(1)=eval(fun);
x=x1;
fr(2)=eval(fun);

u=fr(2);
v=fr(1);

g=diff(fun);
xn1(1)=x0;
xn1(2)=x1;
b=x1;
a=x0;
n=2; 
if u*v>=0
   disp('Error, la función debe cambiar de signo entre (xo,x1)');
end 
while ((b-a)*0.5>tol)
   n=n+1;
   xn1(n)=xn1(n-1)-u*(xn1(n-1)-xn1(n-2))/(u-v);
   c=xn1(n);
   x=c;
   u=eval(fun);
   fr(n)=u;
   b=xn1(n-1);
   x=b;
   v=eval(fun);
   a=xn1(n-2);
   x=1;
   w=eval(fun);
   disp(['Itercion n=', num2str(n-2)]);
   disp(['x(n+1)=', num2str(xn1(n))]);
   disp(['f(x(n+1))=', num2str(u)]);
   
    if sign(u)==sign(w)
	a = c; 
    b=b;
    else
    a=a;    
	b=c; 
    end
   
end;

L=xn1;