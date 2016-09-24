function f7=funcioncompuesta(a)
syms x;

if x~=a;
        fo=x^3 * sin(1/x) -2* sin(x);
else
        fo=0;
end

f7=fo;