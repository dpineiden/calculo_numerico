function ha=halley(xo,f,n)
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
    x=xo-2*fo*go/(2*go^2 - fo*ho);
end
ha=x;