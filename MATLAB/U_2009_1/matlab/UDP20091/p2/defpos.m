function DP=defpos(A)
E=eig(A);
l=length(E);
for i=1:l
   if E(i,:)>0
       DP='La matriz es Definida Positiva';
   elseif E(i,:)<=0
       DP='La matriz no es Definida Positiva';
       break
       
       end
   end