function A=matriza(n)
a=0;
for i=1:n
    for j=1:n
        if j==i
            if a==0
            A(i,j)=4;
            a=1;%hace referencia al i siguiente
            elseif a==1
            A(i,j)=2;
            a=0;
            end       
        elseif j==i-1 
            A(i,j)=1;
        elseif j==i+1
            A(i,j)=1;
        else 
            A(i,j)=0;
        end   
        
    end    
end

