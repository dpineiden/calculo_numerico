function ja=jarrat(xo,f,n)
g=diff(f);
u=f/g;
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    go=eval(f);
    uo=eval(u);
    x1=xo;
    x=xo-(2/3)*uo;
    g1=eval(g);
    xo=x1;
    syms x;
    x=xo-(.5)*u0-fo/(g0-3*g1);
end
ja=x;