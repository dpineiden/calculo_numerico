function [st,no,co]=stirling(xo,f,n)
g=diff(f);
lfx=lefx(f);
syms x;
x=xo;
for i=1:1:n
    fo=eval(f);
    co(:,i)=xo;
    x1=xo;    
    x=xo-fo;
    go=eval(g);
    lfxo=eval(lfx);
    xo=x1;    
    syms x;
    x=xo-(fo/go);
    m=abs(x-xo)/abs(x);
    no=i;
    if m<=10^-10
        break
    end
end
st=x;