function s=simetria(A)
diff=A-A';
[m,n]=size(A);
a=0;
for i=1:n
    for j=1:m
        if diff(i,j)==0
                   s='La matriz es Simetrica';
        else 
                   s='La matriz no es Simetrica';
                    break
        end
    end
end

