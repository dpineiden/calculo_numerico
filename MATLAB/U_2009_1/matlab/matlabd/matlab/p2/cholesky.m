function chole=cholesky(A,b)
    L = chol(A,'lower');
    [m,n] = size(L);
    Lt=L';
%se resuelve L*y=b
y(1,:)=b(1)/L(1,1);

for i=2:m
    c=0;
    for j=1:n-1
        if i~=j & i>j
     c=c+L(i,j)*y(j,:);
        end
    end
   y(i,:)=(1/(L(i,i)))*(b(i)-c);     
end
%se resuelbe L'x=y
x(n,:)=y(n,:)/L(n,n);

for i=n-1:-1:1
    c=0;
    for j=n:-1:2
        if i~=j & i<j 
     c=c+Lt(i,j)*x(j);
        end
    end
   x(i,:)=(1/(Lt(i,i)))*(y(i,:)-c);     
end
chole=x;