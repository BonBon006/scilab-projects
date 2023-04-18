clc
y=input ("input polynomial equation:            ")
a1=input ("input lower limit or value of a:      ")
if a1>=0 then 
    a1pos=a1
else 
    a1neg=a1
end
b1=input ("input upper limit or value of b:      ")
if b1>=0 then 
    b1pos=b1
else 
    b1neg=b1
end
horner(y,[a1])
a2=horner(y,[a1])
if a2>=0 then 
    a2pos=a2
else 
    a2neg=a2
end
horner(y,[b1])
b2=horner(y,[b1])
if b2>=0 then 
    b2pos=b2
else 
    b2neg=b2
end
disp("value of f(a):  "+string(a2)+" ")
disp("value of f(b):  "+string(b2)+" ")
c1=a2*b2
disp("value of f(a)*f(b):  "+string(c1)+" ")
if c1<0 then 
    d1=(a+b)/2
else 
    abort 
    disp("f(a)*f(b)is not less than 0.")
end
if d1>=0 then 
    d1pos=d1 
    disp("value of first approximation:  "+string(d1)+" ")
else 
    d1neg=d1 
    disp("value of first approximation:  "+string(d1)+" ")
end
horner(y,[d1])
d2=horner(y,[d1])
if d2>0 then 
    d2pos=d2 
    disp("value of f(x0):  "+string(d2pos)+" ")
elseif d2<0 then 
    d2neg=d2 
    disp("value of f(x0):  "+string(d2neg)+" ")
else 
    abort disp(""+string(d1)+" is the root.")
end
if d2>0 then 
    c2=d2pos*a2neg
elseif d2>0 then 
    c2=d2pos*b2neg
elseif d2neg=d2 then 
    c2=d2neg*a2pos
elseif d2neg=d2 then 
    c2=d2neg*b2pos
else 
    abort disp("error.")
end
if c2>0 then 
    c2pos=c2
elseif c2<0 then 
    c2neg=c2
else 
    abort disp("error.")
end
if c2=c2pos then 
    e1=(c2pos+a1neg)
end
