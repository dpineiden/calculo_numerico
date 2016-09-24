clear
syms x;
f4='-253*x^3+759.6*x^2-756*x+249';

%raiz positiva de 1
%todas raices de 2
%raiz positiv mas pequeña de 3


%se grafican fns

  v=[-5:.01:5];
  n=length(v);
  for i=1:n
      x=v(i);
      ev_f1(i)=eval(f4);
%      ev_f2(i)=eval(fc2);
%      ev_f3(i)=eval(fc3);
  end
%  figure
  plot(v,ev_f1)
% figure
% plot(v,ev_f2)
% figure
% plot(v,ev_f3)

[Xc1,no1,co1,fx1]=newton(1.5,f4,100)