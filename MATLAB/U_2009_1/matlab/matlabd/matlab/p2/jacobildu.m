function [L D U]=jacobildu(A)
[m,n]=size(A);
for i=1:n
    for j=1:m
        if i==j
            L(i,j)=0;
            D(i,j)=A(i,j);
            U(i,j)=0;
        elseif j<i
            L(i,j)=A(i,j);
            D(i,j)=0;
            U(i,j)=0;
        elseif j>i
            L(i,j)=0;
            D(i,j)=0;
            U(i,j)=A(i,j);
        end
    end 
end

