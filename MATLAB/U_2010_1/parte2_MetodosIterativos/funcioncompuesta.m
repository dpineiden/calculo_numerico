function f7=funcioncompuesta()
syms x;

if x~=0;
        fo=x^3 * sin(1/x) -2* sin(x);
else
        fo=0;
end

f7=fo;