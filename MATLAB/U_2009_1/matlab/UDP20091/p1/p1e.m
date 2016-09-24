syms x1
syms x2
G=['sin(x1)+3*cos(x2)-2';'cos(x1)-sin(x2)+.2 '];
%se calcula el jacobiano:
dG(1,:)=[diff(G(1,:),x1), diff(G(1,:),x2)];
dG(2,:)=[diff(G(2,:),x1), diff(G(2,:),x2)];
%se da el valor de partida:;
x1=1;
x2=1;
x_1o=[x1;x2];
%se calcula H en ese punto
Go(1,:)=eval(G(1,:));
Go(2,:)=eval(G(2,:));
%Se calcula el Jacobiano en ese punto
dG1=eval(dG);
%se calcula la Inversa del JAcobiano en ese punto
dG_1=dG1^-1;
%se calcula el siguiente valor de iteración
x_1=[x1;x2]-dG_1*Go;
%cantidad de iteraciones:
n=50;

a=n;

for i=1:n  
%error relativo entre aproximaciones sucecivas
    er=norm(x_1-x_1o)/norm(x_1);
    if er<.0001
        a=i;
       break; end
   
    x1=x_1(1);
    x2=x_1(2);
    x_1o=[x1;x2];
    Go(1,:)=eval(G(1,:));
    Go(2,:)=eval(G(2,:));
    dG1=eval(dG);
    dG_1=dG1^-1;
    x_1=[x1;x2]-dG_1*Go;  
    
end
    a
    x_1