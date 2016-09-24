function pm=puntomedio(xo,f,n)
g=diff(f);
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    go=eval(f);
    x1=xo;
    x=xo-fo/(2*go);
    g1=eval(g);
    xo=x1;
    syms x;
    x=xo-(fo^2/(go-fo));
end
pm=x;