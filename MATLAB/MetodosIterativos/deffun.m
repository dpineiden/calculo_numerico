syms x;
f1=x^2-1;
f2=x^3-1;
f3=x*exp(x^2)-sin(x)^2+3*cos(x)+5;
f4=x^2 *sin(x)^2+exp(x^2*cos(x)*sin(x))-28; 
%menor cero positivo
f5=exp(x^2+7*x-30)-1;
f6=sin(x)*exp(x) -log(x^2-1);
f7=x^3 * sin(1/x) -2* sin(x);



%
[A1, B1 ,C1]=analisisf(f1,xo(1),N);
[A2, B2 ,C2]=analisisf(f2,xo(2),N);
[A3, B3 ,C3]=analisisf(f3,xo(3),N);
[A4, B4 ,C4]=analisisf(f4,xo(4),N);
[A5, B5 ,C5]=analisisf(f5,xo(5),N);
[A6, B6 ,C6]=analisisf(f6,xo(6),N);
[A7, B7 ,C7]=analisisf(f7,xo(7),N);

p1=plotearf(B1,C1);
p2=plotearf(B2,C2);
p3=plotearf(B3,C3);
p4=plotearf(B4,C4);
p5=plotearf(B5,C5);
p6=plotearf(B6,C6);
p7=plotearf(B7,C7);