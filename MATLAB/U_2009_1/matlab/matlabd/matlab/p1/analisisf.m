function [A,B,C,F]=analisisf(f,xo,N)
%1
[Xc,no1,co1,fx1]=newton(xo,f,N);
%2
[sc,no2,co2,fx2]=schroder(xo,f,N);
%3
[wh,no3,co3,fx3]=whittaker(xo,f,N);
%4
[ha,no4,co4,fx4]=halley(xo,f,N);
%5
[ch,no5,co5,fx5]=chebysev(xo,f,N);
%6
[sha,no6,co6,fx6]=superhalley(xo,f,N);
%7
[st,no7,co7,fx7]=stirling(xo,f,N);
%8
[ste,no8,co8,fx8]=steffensen(xo,f,N);
%9
[pm,no9,co9,fx9]=puntomedio(xo,f,N);
%10
[to,no10,co10,fx10]=traubostrowski(xo,f,N);
%11
[ja,no11,co11,fx11]=jarrat(xo,f,N);
%12
[nn,no12,co12,fx12]=newtonnewton(xo,f,N);
A(:,1)=[Xc;sc;wh;ha;ch;sha;st;ste;pm;to;ja;nn];
B(:,1)=[no1,no2,no3,no4,no5,no6,no7,no8,no9,no10,no11,no12];
F(:,1)=[fx1,fx2,fx3,fx4,fx5,fx6,fx7,fx8,fx9,fx10,fx11,fx12];
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
l(:,12)=length(co12);
lm=max(l);

Cx=[zeros(1,lm-l(1)) co1 ;zeros(1,lm-l(2)) co2 ;zeros(1,lm-l(3)) co3 ;zeros(1,lm-l(4)) co4 ;zeros(1,lm-l(5)) co5 ;zeros(1,lm-l(6)) co6 ;zeros(1,lm-l(7)) co7 ;zeros(1,lm-l(8)) co8;zeros(1,lm-l(9)) co9 ; zeros(1,lm-l(10)) co10; zeros(1,lm-l(11)) co11;zeros(1,lm-l(12)) co12 ];
C=Cx;
