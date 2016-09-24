% METODO SOR
%
% Resolver el sistema Ax = b dado el parametro w (omega) 
% y una aproximacion inicial x(0).
%
% ENTRADA: El numerode ecuaciones e incognitas n; las entradas 
%          A(I,J), 1<=I,J<=n, de la matriz A; las entradas 
%          B(I), 1<=I<=n, del termino b; las entradas XO(I), 
%          1<=I<=n, de x(0); la tolerancia TOL;
%          el numero maximo de iteraciones N, parametro w (omega)
%
%  SALIDA: La solucion aproximada X(1),...,X(n) o un mensaje
%          de que el numero de iteraciones fue sobrepasado.
 syms('OK', 'AA', 'NAME', 'INP', 'N', 'I', 'J', 'A', 'X1');
 syms('TOL', 'NN', 'W', 'K', 'ERR', 'S', 'FLAG', 'OUP', 'EP');
 TRUE = 1;
 FALSE = 0;
 fprintf(1,'Este es el metodo de SOR para sistemas lineales.\n');
 OK = FALSE;
 fprintf(1,'Los datos se leen de un fichero de la forma\n');
 fprintf(1,'A(1,1), A(1,2), ..., A(1,n+1), \n');
 fprintf(1,'A(2,1), A(2,2), ..., A(2,n+1), \n');
 fprintf(1,'..., A(n,1), A(n,2), ..., A(n,n+1)\n');
 fprintf(1,'Coloque tantas entradas como desee en cada linea, pero separadas\n');
 fprintf(1,'con un espacio en blanco como minimo.\n\n\n');
 fprintf(1,'La aproximacion inicial de seguir en el mismo formato.\n');
 fprintf(1,'¿Ha sido creado el fichero de entrada  de datos? - Escriba Y or N.\n');
 AA = input(' ','s');
 if AA == 'Y' | AA == 'y' 
 fprintf(1,'Escriba el nombre del fichero en la forma - disco:\\nombre.ext\n');
 fprintf(1,'Por ejemplo:   A:\\DATA.DTA\n');
 NAME = input(' ','s');
 INP = fopen(NAME,'rt');
 OK = FALSE;
 while OK == FALSE 
 fprintf(1,'Escriba el numero de ecuaciones - un entero.\n');
 N = input(' ');
 if N > 0 
 A = zeros(N,N+1);
 X1 = zeros(1,N);
 for I = 1 : N 
 for J = 1 : N+1 
 A(I,J) = fscanf(INP, '%f',1);
 end;
 end;
 for I = 1 : N 
 X1(I) = fscanf(INP, '%f',1);
 end;
% se usa X1 por X0
 OK = TRUE;
 fclose(INP);
 else
 fprintf(1,'El numero debe ser un entero positivo\n');
 end;
 end;
 OK = FALSE;
 while OK == FALSE 
 fprintf(1,'Escriba la tolerancia.\n');
 TOL = input(' ');
 if TOL > 0 
 OK = TRUE;
 else
 fprintf(1,'La tolerancia debe ser positiva.\n');
 end;
 end;
 OK = FALSE;
 while OK == FALSE 
 fprintf(1,'Escriba el numero maximo de iteraciones.\n');
 NN = input(' ');
 EP = zeros(1,NN);
 if NN > 0 
 OK = TRUE;
 else
 fprintf(1,'El numero debe ser un entero positivo.\n');
 end;
 end;
 fprintf(1,'Escriba el valor del parametro w (omega)\n');
 W = input(' ');
% Se usa W por omega
 else
 fprintf(1,'El programa terminara para que pueda crear el fichero de entrada.\n');
 end;
 if OK == TRUE 
% PASO 1
 K = 1;
 OK = FALSE;
% PASO 2
 while OK == FALSE & K <= NN 
% ERR se usa para comprobar la precision - mide la norma infinito
 ERR = 0;
% PASO 3
 for I = 1 : N 
 S = 0;
 for J = 1 : N 
 S = S-A(I,J)*X1(J);
 end;
 S = W*(S+A(I,N+1))/A(I,I);
 if abs(S) > ERR 
 ERR = abs(S);
 end;
 X1(I) = X1(I)+S;
 end;
% PASO 4
 EP(K)=ERR;
 if ERR <= TOL  
 OK = TRUE;
% El proceso se ha terminado
 else
% PASO 5
 K = K+1;
% PASO 6 - no se usa ya que solo se necesita un vector
 end;
 end;
 if OK == FALSE 
 fprintf(1,'Se ha sobrepasado en numero maximo de iteraciones.\n');
% PASO 7
% Proceso terminado sin exito
 else
 fprintf(1,'Seleccione el destino de salida de datos:\n');
 fprintf(1,'1. Pantalla\n');
 fprintf(1,'2. Fichero de texto\n');
 fprintf(1,'Escriba 1 o 2.\n');
 FLAG = input(' ');
 if FLAG == 2 
 fprintf(1,'Escriba el nombre del fichero de la forma - disco:\\nombre.ext\n');
 fprintf(1,'Por ejemplo:   A:\\OUTPUT.DTA\n');
 NAME = input(' ','s');
 OUP = fopen(NAME,'wt');
 else
 OUP = 1;
 end;
 fprintf(OUP, 'METODO SOR PARA SISTEMAS LINEALES\n\n');
 fprintf(OUP, 'El vector solucion es:\n');
 for I = 1 : N 
 fprintf(OUP, ' %11.8f', X1(I));
 end;
 fprintf(OUP, '\nrealizando %d iterationes\n', K);
 fprintf(OUP, 'con una tolerancia de %.10e en la norma infinito\n', TOL);
 fprintf(OUP, 'con el parametro %.10e\n', W);
 EP=EP(1:K);
 figure(1);
 semilogy(EP,'--rs','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','g','MarkerSize',5);
 title('METODO SOR');
 xlabel('Iteraciones'); 
 ylabel('Error');
 if OUP ~= 1 
 fclose(OUP);
 fprintf(1,'El fichero de salida se creo satisfactoriamente \n',NAME);
 end;
 end;
 end;
