function lf=lfx(f)

g=diff(f);
h=diff(g);
lf=f*h/g^2;

