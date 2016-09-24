function DP=esdp(A)
E=eig(A);
l=length(E);
for i=1:l
   if E(i,:)>0
       DP='Es Definida Positiva';
   elseif E(i,:)<=0
       DP='No es Definida Positiva';
       break       
       end
   end