clear
syms x;
fd1='x^3-1';
fd2='x*exp(x^2)-sin(x)^2+3*cos(x)+5';
fd3='x^2*sin(x)^2+exp(x^2*cos(x)*sin(x))-28';
fd4='exp(x^2+7*x-30)-1';
fd5='sin(x)*exp(x)+log(x^2+1)';
fd6=funcioncompuesta();

%raiz positiva de 1
%todas raices de 2
%raiz positiv mas pequeña de 3


%se grafican fns

  v=[-5:.01:5];
  n=length(v);
  for i=1:n
      x=v(i);
      ev_f1(i)=eval(fd1);
      ev_f2(i)=eval(fd2);
      ev_f3(i)=eval(fd3);
      ev_f4(i)=eval(fd4);
      ev_f5(i)=eval(fd5);
     % ev_f6(i)=eval(fd6);
  end
%  figure
figure
  plot(v,ev_f1)
  figure
  plot(v,ev_f2)
  figure
  plot(v,ev_f3)
figure
  plot(v,ev_f4)
 figure
plot(v,ev_f5)
%figure
%plot(v,ev_f6)
% figure
% plot(v,ev_f2)
% figure
% plot(v,ev_f3)