clear
syms x
f1='x-tan(x)';
f2='x^3-3.23*x^2-5.54*x+9.84';
%se define la tolerancia o presicion
tol=.000001
%se grafican ambas funciones, evaluandolas en un vector entre [-0.1,1]
% v=[-1:.0001:2];
% n=length(v);
% for i=1:n
%     x=v(i);
%     ev_f1(i)=eval(f1);
%     ev_f2(i)=eval(f2);
% end
% figure
% subplot(2,1,1)
% plot(v,ev_f1)
% subplot(2,1,2)
% plot(v,ev_f2)

%biseccion

[xn11,fr11] = biseccion(f1,-.1,.1,tol);
[xn12,fr12] = biseccion(f2,1,1.5,tol);
xn11=xn11';
xn12=xn12';
%secante
[xn21,fr21] = secante(f1,-.1,.1,tol);
[xn22,fr22] = secante(f2,1,1.5,tol);
xn21=xn21';
xn22=xn22';
%regula
[xn31,fr31] = regula(f1,-.1,.1,tol);
[xn32,fr22] = regula(f2,1,1.5,tol);
xn31=xn31';
xn32=xn32';