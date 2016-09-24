function sc=schroder(xo,f,n)
g=diff(f);
h=diff(h);
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    go=eval(g);
    ho=eval(h);
    xo=x;
    syms x;
    x=xo-fo*go/(go^2-fo*ho);
end
sc=x;