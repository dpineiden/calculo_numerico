syms x;
f1=x^2-1;
f2=x^3-1;
f3=x*exp(x^2)-sin(x)^2+3*cos(x)+5;
f4=x^2 *sin(x)^2+exp(x^2*cos(x)*sin(x))-28; 
%menor cero positivo
f5=exp(x^2+7*x-30)-1;
f6=sin(x)*exp(x) -log(x^2-1);
f7=x^3 * sin(1/x) -2* sin(x);


N=50;
xo=[.9584 , 1.005 , -1.236 , 3.45 , 3.014 ,  -1.305 , 1.468]
%xo =[1.039 1.026   -1.22    3.386    2.979    3.025    1.49000];
%1.039 ##1.026 ## -1.22## 3.395 ## 2.979##  3.025##1.455
%función 1
[A1,B1,C1,F1]=analisisf(f1,xo(1),N);
p1=plotearf(B1,C1);
%función 2
[A2,B2,C2,F2]=analisisf(f2,xo(2),N);
p2=plotearf(B2,C2);
%función 3
[A3,B3,C3,F3]=analisisf(f3,xo(3),N);
p3=plotearf(B3,C3);
%función 4
[A4,B4,C4,F4]=analisisf(f4,xo(4),N);
p4=plotearf(B4,C4);
%función 5
[A5,B5,C5,F5]=analisisf(f5,xo(5),N);
p1=plotearf(B5,C5);
%función 6
[A6,B6,C6,F6]=analisisf(f6,xo(6),N);
p1=plotearf(B6,C6);
%función 7
[A7,B7,C7,F7]=analisisf(f7,xo(7),N);
p7=plotearf(B7,C7);

A1
B1
F1

A2
B2
F2

A3
B3
F3

A4
B4
F4

A5
B5
F5

A6
B6
F6

A7
B7
F7
