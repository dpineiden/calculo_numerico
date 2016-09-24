function p=plotearf(B,C)
metodos=['     Newton    ';'   Schroder    ';'   Whittaker   ';'    Halley     ';
    '    Chebysev   ';'  Super Halley ';'    Stirling   ';'  Punto Medio  ';
    'Traub ostrowski';'    Jarrat     ';' Newton Newton '];
l=length(B)
p=figure;
for i=1:l
    n=i;
    co=length(C(i,:));
    bo=co-B(i,:)+1;
    B(i,1);
    no=[1:1:B(i,1)];
    subplot(3,4,i);    
    c=C(i,bo:co);
    plot(no,c,'o');
   title(metodos(i,:));
   xlabel('N: iteración');
   ylabel('Xo: cero de función');
end


