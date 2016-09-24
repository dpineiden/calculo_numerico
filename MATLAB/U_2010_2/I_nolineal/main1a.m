clear
syms x
f1='(x+2)*(x+1)^2*x*(x-1)^3*(x-2)';
xo=[-2.3:.01:2.3];
figure
for i=1:length(xo)
    x=xo(i);
    F1(i)=eval(f1);
end
plot(xo,F1);
syms x
AB=[-1.5 2.5;-.5 2.4;-.5 3;-3 -.5];
tol=.000001;
[xn1,w1] = biseccion(f1,AB(1,1),AB(1,2),tol);
[xn2,w2] = biseccion(f1,AB(2,1),AB(2,2),tol);
[xn3,w3] = biseccion(f1,AB(3,1),AB(3,2),tol);
[xn4,w4] = biseccion(f1,AB(4,1),AB(4,2),tol);