function ch=chebysev(xo,f,n)
g=diff(f);
lfx=lefx(f);
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    go=eval(g);
    lfxo=eval(lfx);
    xo=x;
    syms x;
    x=xo-(fo/go)*(1+lfxo/2);
end
ch=x;