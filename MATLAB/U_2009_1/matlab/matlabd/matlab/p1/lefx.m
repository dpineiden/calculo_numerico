function lfx=lefx(f)

g=diff(f);
h=diff(g);
lfx=f*h/g^2;

