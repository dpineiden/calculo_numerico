xo=3;
syms x;
f=x^2-5*x+6;
g=diff(f);
h=diff(g);
%grado conv newton
syms x;
fn=x-f/g;
fn1=diff(fn);
fn2=diff(fn1);
fn3=diff(fn2);
fn4=diff(fn3);
fn5=diff(fn4);
OC(1,1)=limit(fn1,xo);
OC(1,2)=limit(fn2,xo);
OC(1,3)=limit(fn3,xo);
OC(1,4)=limit(fn4,xo);
OC(1,5)=limit(fn5,xo);
%grado conv schr�der
syms x;
fsc=x-f*g/(g^2-f*h);
fsc1=diff(fsc);
fsc2=diff(fsc1);
fsc3=diff(fsc2);
fsc4=diff(fsc3);
fsc5=diff(fsc4);
OC(2,1)=limit(fsc1,xo);
OC(2,2)=limit(fsc2,xo);
OC(2,3)=limit(fsc3,xo);
OC(2,4)=limit(fsc4,xo);
OC(2,5)=limit(fsc5,xo);
% GC whittaker
syms x;
fw=x-f/(2*g)*(2-lefx(f));
fw1=diff(fw);
fw2=diff(fw1);
fw3=diff(fw2);
fw4=diff(fw3);
fw5=diff(fw4);
OC(3,1)=limit(fw1,xo);
OC(3,2)=limit(fw2,xo);
OC(3,3)=limit(fw3,xo);
OC(3,4)=limit(fw4,xo);
OC(3,5)=limit(fw5,xo);

%Halley
syms x;
fh=x-f*(2*g)/(2*g^2-f*h);
fh1=diff(fh);
fh2=diff(fh1);
fh3=diff(fh2);
fh4=diff(fh3);
fh5=diff(fh4);
OC(4,1)=limit(fh1,xo);
OC(4,2)=limit(fh2,xo);
OC(4,3)=limit(fh3,xo);
OC(4,4)=limit(fh4,xo);
OC(5,5)=limit(fh5,xo);
%Chebysev
syms x;
fch=x-(f/g)*(1+lefx(f)/2);
fch1=diff(fch);
fch2=diff(fch1);
fch3=diff(fch2);
fch4=diff(fch3);
fch5=diff(fch4);
OC(5,1)=limit(fch1,xo);
OC(5,2)=limit(fch2,xo);
OC(5,3)=limit(fch3,xo);
OC(5,4)=limit(fch4,xo);
OC(5,5)=limit(fch5,xo);
%super halley
syms x;
fsh=x-f/(2*g)*(2-lefx(f))/(1-lefx(f));
fsh1=diff(fsh);
fsh2=diff(fsh1);
fsh3=diff(fsh2);
fsh4=diff(fsh3);
fsh5=diff(fsh4);
OC(6,1)=limit(fsh1,xo);
OC(6,2)=limit(fsh2,xo);
OC(6,3)=limit(fsh3,xo);
OC(6,4)=limit(fsh4,xo);
OC(6,5)=limit(fsh5,xo);
%Stirling
syms x;
syms t;
t=x-f;
x=t;
g1=eval(g);
syms x;
fst=x-f/g1;
fst1=diff(fst);
fst2=diff(fst1);
fst3=diff(fst2);
fst4=diff(fst3);
fst5=diff(fst4);
OC(7,1)=limit(fst1,xo);
OC(7,2)=limit(fst2,xo);
OC(7,3)=limit(fst3,xo);
OC(7,4)=limit(fst4,xo);
OC(7,5)=limit(fst5,xo);
%steffensen
syms x;
syms t;
t=x+f;
x=t;
g1=eval(g);
syms x;
fste=x-f^2/(g1-f);
fste1=diff(fste);
fste2=diff(fste1);
fste3=diff(fste2);
fste4=diff(fste3);
fste5=diff(fste4);
OC(8,1)=limit(fste1,xo);
OC(8,2)=limit(fste2,xo);
OC(8,3)=limit(fste3,xo);
OC(8,4)=limit(fste4,xo);
OC(8,5)=limit(fste5,xo);
% Punto medio
syms x;
syms t;
t=x-.5*f/g;
x=t;
g1=eval(g);
syms x;
fpm=x-f/g1;
fpm1=diff(fpm);
fpm2=diff(fpm1);
fpm3=diff(fpm2);
fpm4=diff(fpm3);
fpm5=diff(fpm4);
OC(9,1)=limit(fpm1,xo);
OC(9,2)=limit(fpm2,xo);
OC(9,3)=limit(fpm3,xo);
OC(9,4)=limit(fpm4,xo);
OC(9,5)=limit(fpm5,xo);
%traub ostrowski
u=f/g;
syms t;
t=x-u;
x=t;
f1=eval(f);
syms x;
fto=x-u*(f1-f)/(2*f1-f);
fto1=diff(fto);
fto2=diff(fto1);
fto3=diff(fto2);
fto4=diff(fto3);
fto5=diff(fto4);
OC(10,1)=limit(fto1,3);
OC(10,2)=limit(fto2,3);
OC(10,3)=limit(fto3,3);
OC(10,4)=limit(fto4,3);
OC(10,5)=limit(fto5,3);
%Jarrat
u=f/g;
syms t;
t=x-(2/3)*u;
x=t;
g1=eval(g);
syms x;
fj=x-u*(.5)+f/(g-3*g1);
fj1=diff(fj);
fj2=diff(fj1);
fj3=diff(fj2);
fj4=diff(fj3);
fj5=diff(fj4);
OC(11,1)=limit(fj1,xo);
OC(11,2)=limit(fj2,xo);
OC(11,3)=limit(fj3,xo);
OC(11,4)=limit(fj4,xo);
OC(11,5)=limit(fj5,xo);
%newton newton
u=f/g;
syms t;
t=x-u;
x=t;
g1=eval(g);
f1=eval(f);
syms x;
fnn=x-u-f1/g1;
fnn1=diff(fnn);
fnn2=diff(fnn1);
fnn3=diff(fnn2);
fnn4=diff(fnn3);
fnn5=diff(fnn4);
OC(12,1)=limit(fnn1,xo);
OC(12,2)=limit(fnn2,xo);
OC(12,3)=limit(fnn3,xo);
OC(12,4)=limit(fnn4,xo);
OC(12,5)=limit(fnn5,xo);