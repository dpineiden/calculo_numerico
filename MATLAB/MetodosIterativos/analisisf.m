function [A,B,C]=analisisf(f,xo,N)

[Xc,no1,co1]=newton(xo,f,N);
[sc,no2,co2]=schroder(xo,f,N);
[wh,no3,co3]=whittaker(xo,f,N);
[ha,no4,co4]=halley(xo,f,N);
[ch,no5,co5]=chebysev(xo,f,N);
[sha,no6,co6]=superhalley(xo,f,N);
[st,no7,co7]=stirling(xo,f,N);
[pm,no8,co8]=puntomedio(xo,f,N);
[to,no9,co9]=traubostrowski(xo,f,N);
[ja,no10,co10]=jarrat(xo,f,N);
[nn,no11,co11]=newtonnewton(xo,f,N);
A(:,1)=[Xc;sc;wh;ha;ch;sha;st;pm;to;ja;nn];
B(:,1)=[no1,no2,no3,no4,no5,no6,no7,no8,no9,no10,no11];

l(:,1)=length(co1);
l(:,2)=length(co2);
l(:,3)=length(co3);
l(:,4)=length(co4);
l(:,5)=length(co5);
l(:,6)=length(co6);
l(:,7)=length(co7);
l(:,8)=length(co8);
l(:,9)=length(co9);
l(:,10)=length(co10);
l(:,11)=length(co11);
lm=max(l);

Cx=[zeros(1,lm-l(1)) co1 ;zeros(1,lm-l(2)) co2 ;zeros(1,lm-l(3)) co3 ;zeros(1,lm-l(4)) co4 ;zeros(1,lm-l(5)) co5 ;zeros(1,lm-l(6)) co6 ;zeros(1,lm-l(7)) co7 ;zeros(1,lm-l(8)) co8;zeros(1,lm-l(9)) co9 ; zeros(1,lm-l(10)) co10; zeros(1,lm-l(11)) co11 ];
C=Cx;
