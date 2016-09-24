function to=traubostrowski(xo,f,n)
g=diff(f);
u=f/g;
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    go=eval(f);
    uo=eval(u);
    x1=xo;
    x=xo-uo;
    f1=eval(f);
    xo=x1;
    syms x;
    x=xo-(fo/(2*go))**(f1-fo)/(2*f1-fo);
end
to=x;