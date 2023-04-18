clc
y=input ("input polynomial function:            ")
a1=input ("input lower limit or value of a:      ")
b1=input ("input upper limit or value of b:      ")
horner(y,[a1])
a2=horner(y,[a1]) // a2=f(a)
disp("value of f(a):  "+string(a2)+" ")
horner(y,[b1])
b2=horner(y,[b1]) // b2=f(b)
disp("value of f(b):  "+string(b2)+" ")
disp("polynomial function:               "+string(y)+" ")
c1=a2*b2 // c1=f(a)*f(b)
if c1<0 then 
    d1=(a1+b1)/2 // d1=x0 or initial approximation
    disp("value of initial approximation:  "+string(d1)+" ")
else disp("ERROR: f(a)*f(b)is not less than 0.")
    abort
end
horner(y,[d1])
d2=horner(y,[d1]) // d2=f(x0)
disp("value of f(x0):  "+string(d2)+" ")
// f(x0)*f(a) or f(x0)*f(b)
if d2>0 & a2<0 then
    e1=(d1+a2)/2    
    disp("first approximation:  "+string(e1)+"")
elseif d2<0 & a2>0 then 
    e1=(d1+a2)/2
    disp("first approximation:  "+string(e1)+"")
elseif d2>0 & b2<0 then
    e1=(d1+b2)/2
    disp("first approximation:  "+string(e1)+"")
elseif d2<0 & b2>0 then
    e1=(d1+b2)/2
    disp("first approximation:  "+string(e1)+"") 
else abort
    disp(""+string(d1)+" is the root.")
end
// e1=x1
horner(y,[e1])
e2=horner(y,[e1]) // e2=f(x1)
disp("value of f(x1):  "+string(e2)+" ")
if e2>0 & d2<0 then
    f1=e2*d2
    end;
elseif e2<0 & d2>0 then
    f1=e2*d2
    end;
elseif e2>0 & d2>0 & a2<0 & b2>0 then
    f1=e2*a2
end
