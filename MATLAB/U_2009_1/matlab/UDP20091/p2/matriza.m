function A=matriza(n)
a=0;
for i=1:n
    for j=1:n
        if j==i
            A(i,j)=2;               
        elseif j==i-1 
            A(i,j)=-1;
        elseif j==i+1
            A(i,j)=-1;
        else 
            A(i,j)=0;
        end   
        
    end    
end
