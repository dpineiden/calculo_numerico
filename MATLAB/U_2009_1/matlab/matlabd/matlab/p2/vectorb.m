function b=vectorb(n)
a=0;
for i=1:n
            if a==0
            b(i,:)=1;
            a=i+1;%hace referencia al i siguiente
            elseif a==i
            b(i,:)=2;
            a=0;
            end      
end
