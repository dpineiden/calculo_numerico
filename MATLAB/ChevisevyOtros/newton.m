function Xc=newton(xo,f,n)
g=diff(f);
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    go=eval(g);
    xo=x;
    syms x;
    x=xo-fo/go;
end
Xc=x;