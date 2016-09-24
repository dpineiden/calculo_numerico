function wh=whittaker(xo,f,n)
g=diff(f);
h=diff(h);
lfx=lefx(f);
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    go=eval(g);
    ho=eval(h);
    lfxo=eval(lfx);
    xo=x;
    syms x;
    x=xo-(fo/(2*go))*(2-lfxo);
end
wh=x;