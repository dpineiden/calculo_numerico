function  [xn,w] = biseccion(fun,a,b,tol)
% Aproxima por el método  de la bisección una raíz de la ecuación fun(x)=0
syms x;
disp('Método de la bisección');
xn(1)=a;
x=a;
u=eval(fun);
w(1)=u;
xn(2)=b;
x=b;
v=eval(fun);
w(2)=v;
n=1; 
if sign(u)==sign(v)
   disp('Error la función debe cambiar de signo en (a,b)');
end 
while ((b-a)*0.5>tol)
   n=n+1;
   c=(b+a)/2;
   xn(n)=c;
   x=c;
   w(n)=eval(fun);
   disp(['n=', num2str(n)]);
   disp(['c=', num2str(c)]);
   disp(['f(c)=', num2str(w(n))]);
if sign(u)==sign(w(n))
	a = c; u=w(n);
else
	b=c; v=w(n);
end
end;
