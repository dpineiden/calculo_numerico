function  x = biseccion(fun,a,b,tol)
% Aproxima por el método  de la bisección una raíz de la ecuación fun(x)=0
syms x;
disp('Método de la bisección');
x=a;
u=eval(fun);
x=b;
v=eval(fun);
n=1; 
if sign(u)==sign(v)
   disp('Error la función debe cambiar de signo en (a,b)');
end 
while ((b-a)*0.5>tol)
   c=(b+a)/2
   x=c;
   w=eval(fun);
   disp(['n=', num2str(n)]);
   disp(['c=', num2str(c)]);
   disp(['f(c)=', num2str(w)]);
if sign(u)==sign(w)
	a = c; u=w;
else
	b=c; v=w;
end
	n=n+1;
end;
x=c
