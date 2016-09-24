clear

syms x;
fd1='x^3-1';
fd2='x*exp(x^2)-sin(x)^2+3*cos(x)+5';
fd3='x^2*sin(x)^2+exp(x^2*cos(x)*sin(x))-28';
fd4='exp(x^2+7*x-30)-1';
fd5='sin(x)*exp(x)+log(x^2+1)';
fd6=funcioncompuesta();

Xo=[1.01,-1.2,4.62,2.85,-.01,.02];


[A1, B1 ,F1,C1]=analisisf(Xo(1),fd1,30);
[A2, B2,F2 ,C2]=analisisf(Xo(2),fd2,300);
[A3, B3 ,F3,C3]=analisisf(Xo(3),fd3,800);
[A4, B4 ,F4,C4]=analisisf(Xo(4),fd4,600);
[A5, B5 ,F5,C5]=analisisf(Xo(5),fd5,600);
[A6, B6 ,F6,C6]=analisisf(Xo(6),fd6,200);

A=[A1, A2,A3,A4,A5,A6]
B=[B1,B2,B3,B4,B5,B6]
F=[F1,F2,F3,F4,F5,F6];

p1=plotearf(B1,C1);
p2=plotearf(B2,C2);
p3=plotearf(B3,C3);
p4=plotearf(B4,C4);
p5=plotearf(B5,C5);
p6=plotearf(B6,C6);
