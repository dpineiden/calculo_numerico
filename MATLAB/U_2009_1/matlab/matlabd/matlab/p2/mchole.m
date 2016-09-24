matriz=input ('Ingrese la matriz aumentada del sistema, A|b, A tiene que ser simétrica y positiva, por ejemplo: [5 -4 2 20;-4 5 14 19;2 14 3 10]\n');

    tam=size(matriz);%sacar el tamaño de la matriz para determinar A(matris de coeficientes)

    % y b(vector de terminos independientes)   

    n=tam(1);%saca el numero de filas de la matriz

    for i=1:n

        b(i)=matriz(i,n+1);%determinar "b"

        for j=1:n

            A(i,j)=matriz(i,j);%determinar "A"

        end

    end

    b1=b';% "b" es un vector columna

    for k=1:n %Algoritmo de cholesky

        for i=1:k-1 

            sum=0;  

            for j=1:i-1

                sum=sum+A(i,j)*A(k,j);

            end

            A(k,i)=(A(k,i)-sum)/A(i,i);

        end

        sum=0;

        for j=1:k-1

            sum=sum+A(k,j)*A(k,j);

        end

        A(k,k)=sqrt(A(k,k)-sum);

    end

    for i=1:n-1 %Añade los ceros de la L de cholesky

        for j=1:n %''(puesto que el algoritmo solo '''

            if j>i %'''altera los elementos de

                A(i,j)=0; %la diagonal principal de A

            end %y por debajo de esta)

        end

    end

    L=A;%cambio de variable

    Lt=L';%Lt sera la U de cholesky(transpuesta de L)

    c=b1;%se inicializa el vector "c", que tiene el mismo tamaño de "b"

    c(1)=b1(1)/L(1,1);%se determina el primer elemento de c

    for i=2:n %procedimiento para hallar "c"(progresivamente)

        s=0;

        for j=1:n-1

            if i~=j & i>j

                s=s+L(i,j)*c(j) ;

            end

        end

        c(i)=(b1(i)-s)/L(i,i);

    end

    x=c;%se inicializa el vector "x", que tiene el mismo tamaño de "c"

    x(n)=c(n)/Lt(n,n);%se determina x(n)(ultima solucion del sistema)

    for i=n-1:-1:1 %procedimiento para hallar "x"(regresivamente)

        z=0;

        for j=n:-1:2 %''''''Lt*x=c

            if i~=j & i<j

                z=z+Lt(i,j)*x(j);

            end

        end

        x(i)=(c(i)-z)/Lt(i,i);

    end

    L%muestra la matriz triangular inferior de cholesky

    Lt%muestra la matriz superior de cholesky

    LLt=L*Lt%muestra la factorizacion de cholesky

    x%vector solución del sistema

    %clear all%elimina las variables del espacio de trabajo(evita que el programa se cargue de basura)