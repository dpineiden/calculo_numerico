function ste=steffensen(xo,f,n)
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    x1=xo;
    x=xo-fo;
    go=eval(f);
    lfxo=eval(lfx);
    xo=x1;
    syms x;
    x=xo-(fo^2/(go-fo));
end
ste=x;