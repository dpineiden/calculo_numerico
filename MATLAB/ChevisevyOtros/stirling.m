function st=stirling(xo,f,n)
g=diff(f);
lfx=lefx(f);
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    x1=xo;
    x=xo-fo;
    go=eval(g);
    lfxo=eval(lfx);
    xo=x1;
    syms x;
    x=xo-(fo/go);
end
st=x;