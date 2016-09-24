clear all
%condiciones iniciales
syms x;
%xn=0
To=0;
%xn=L
TL=37;
%ctes
k=1;
%1 m
L=1;
%funcion
f='37*(pi/2)^2 * sin(pi/2*x)';
N1=3;
h1=L/(N1+1);
xo1=[0:h1:L]';
x=xo1;
F1(:,1)=eval(f);
to1=[To;zeros(N1,1);TL];
TX1=h1*h1*F1+to1;
A1=matriza(N1+2);

N2=8;
h2=L/(N2+1);
xo2=[0:h2:L]';
x=xo2;
F2(:,1)=eval(f);
to2=[To;zeros(N2,1);TL];
TX2=h2*h2*F2+to2;
A2=matriza(N2+2);

N3=18;
h3=L/(N3+1);
xo3=[0:h3:L]';
x=xo3;
F3(:,1)=eval(f);
to3=[To;zeros(N3,1);TL];
TX3=h3*h3*F3+to3;
A3=matriza(N3+2);

N4=38;
h4=L/(N4+1);
xo4=[0:h4:L]';
x=xo4;
F4(:,1)=eval(f);
to4=[To;zeros(N4,1);TL];
TX4=h4*h4*F4+to4;
A4=matriza(N4+2);

N5=78;
h5=L/(N5+1);
xo5=[0:h5:L]';
x=xo5;
F5(:,1)=eval(f);
to5=[To;zeros(N5,1);TL];
TX5=h5*h5*F5+to5;
A5=matriza(N5+2);


xo1=.88*A1^(-1)*TX1;
xo2=.5*A2^(-1)*TX2;
xo3=.82*A3^(-1)*TX3;
xo4=1.012*A4^(-1)*TX4;
xo5=1.05*A5^(-1)*TX5;
%Se hace el calculo, por metodo y valor de N
%con un maximo de iteraciones
n=1500;
%condiciones iniciales


[jx1,no(1,1)]=jacobi(A1,TX1,xo1,n,h1);
[jx2,no(1,2)]=jacobi(A2,TX2,xo2,n,h2);
[jx3,no(1,3)]=jacobi(A3,TX3,xo3,n,h3);
[jx4,no(1,4)]=jacobi(A4,TX4,xo4,n,h4);
[jx5,no(1,5)]=jacobi(A5,TX5,xo5,n,h5);

[gs1,no(2,1)]=gausssiedel(A1,TX1,xo1,n,h1);
[gs2,no(2,2)]=gausssiedel(A2,TX2,xo2,n,h2);
[gs3,no(2,3)]=gausssiedel(A3,TX3,xo3,n,h3);
[gs4,no(2,4)]=gausssiedel(A4,TX4,xo4,n,h4);
[gs5,no(2,5)]=gausssiedel(A5,TX5,xo5,n,h5);

[sor1,no(3,5)]=relajacionsucesiva(A1,TX1,xo1,n,h1);
[sor2,no(3,5)]=relajacionsucesiva(A2,TX2,xo2,n,h2);
[sor3,no(3,5)]=relajacionsucesiva(A3,TX3,xo3,n,h3);
[sor4,no(3,5)]=relajacionsucesiva(A4,TX4,xo4,n,h4);
[sor5,no(3,5)]=relajacionsucesiva(A5,TX5,xo5,n,h5);


