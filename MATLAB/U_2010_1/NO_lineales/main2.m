clear
syms x
fc1='x^3-x^2-x-1'
fc2='1+0.3*cos(x)-x'
fc3='1/2+sin(x)-cos(x)'

%raiz positiva de 1
%todas raices de 2
%raiz positiv mas pequeña de 3


%se grafican fns

%  v=[-5:.01:5];
%  n=length(v);
%  for i=1:n
%      x=v(i);
%      ev_f1(i)=eval(fc1);
%      ev_f2(i)=eval(fc2);
%      ev_f3(i)=eval(fc3);
%  end
%  figure
%  plot(v,ev_f1)
% figure
% plot(v,ev_f2)
% figure
% plot(v,ev_f3)

[Xc1,no1,co1,fx1]=newton(1.5,fc1,100)

[Xc2,no2,co2,fx2]=newton(1,fc2,100)

[Xc3,no3,co3,fx3]=newton(.5,fc3,100)