clc
a=input ("please input value for a:  ") // value of a
b=input ("please input value for b:  ") // value of b
c=a*b
if c<0 then // c=product of f(a) and f(b)
    disp("the product is negative:  "+string(c)+"")
    abort 
elseif c>0 then
    disp("the product is positive:  "+string(c)+"")
    abort
else
    disp("the product is 0:  "+string(c)+"")
    abort
end
