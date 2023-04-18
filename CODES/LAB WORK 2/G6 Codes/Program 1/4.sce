clc
y=input ("Input polynomial function:         ")
a1=input ("Input lower limit or value of a:  ")
b1=input ("Input upper limit or value of b:  ")
disp("polynomial function:               "+string(y)+" ")
disp("lower limit or a:  "+string(a1)+" ")
disp("upper limit or a:  "+string(b1)+" ")
horner(y,[a1])
a2=horner(y,[a1]) // a2=f(a)
disp("value of f(a):     "+string(a2)+" ")
horner(y,[b1])
b2=horner(y,[b1]) // b2=f(b)
disp("value of f(b):     "+string(b2)+" ")
c1=a2*b2 // c1=f(a)*f(b)
if c1<0 then 
    d1=(a1+b1)/2 // d1=x0 or initial approximation
    disp("initial approximation:  "+string(d1)+" ")
else disp("ERROR: f(a)*f(b)is not less than 0.")
    abort
end
disp("Please input initial approximation or x0 that is rounded-off to 3 decimal places including its zeroes.")
d2=input ("x0 or initial approximation:  ")
disp("value of x0:  "+string(d2)+" ") //d2=x0
horner(y,[d2])
d3=horner(y,[d2]) // d3=f(x0)
disp("value of f(x0):    "+string(d3)+"")
// f(x0)*f(a) or f(x0)*f(b)
if (d3*a2)<0 then
    e1=(d2+a1)/2    
    disp("first approximation:  "+string(e1)+"")
elseif (d3*b2)<0 then 
    e1=(d2+b1)/2
    disp("first approximation:  "+string(e1)+"") 
else
    disp(""+string(d1)+" is the root.")
    abort
end
// e1=x1
disp("Please input first approximation or x1 that is rounded-off to 3 decimal places including its zeroes.")
e2=input ("x1 or first approximation:  ")
disp("value of x1:  "+string(e2)+" ")
horner(y,[e2])
e3=horner(y,[e2]) // e3=f(x1)
disp("value of f(x1):  "+string(e3)+" ")
if (e3*d3)<0 then
    f1=(e2+d2)/2
    disp("second approximation:  "+string(f1)+" ")
elseif (e3*b2)<0 then
    f1=(e2+b1)/2
    disp("second approximation:  "+string(f1)+" ")
elseif (e3*a2)<0 then
    f1=(e2+a1)/2
    disp("second approximation:  "+string(f1)+" ")
else 
    disp("ERROR.")
    abort
end
disp("Please input second approximation or x2 that is rounded-off to 3 decimal places including its zeroes.")
f2=input ("x2 or second approximation:  ")
disp("value of x2:  "+string(f2)+" ")
if f2==e2 then
    disp (""+string(f2)+" is the root.")
    abort
else 
    horner(y,[f2])
end
f3=horner(y,[f2]) // f3=f(x2)
disp("value of f(x2):  "+string(f3)+" ")
if (f3*e3)<0 then
    g1=(f2+e2)/2
    disp("third approximation:  "+string(g1)+" ")
elseif (f3*d3)<0 then
    g1=(f2+d2)/2
    disp("third approximation:  "+string(g1)+" ")
elseif (f3*b2)<0 then
    g1=(f2+b1)/2
    disp("third approximation:  "+string(g1)+" ")
elseif (f3*a2)<0 then
    g1=(f2+a1)/2
    disp("third approximation:  "+string(g1)+" ")
else 
    disp("ERROR.")
    abort
end
disp("Please input third approximation or x3 that is rounded-off to 3 decimal places including its zeroes.")
g2=input ("x3 or third approximation:  ")
disp("value of x3:  "+string(g2)+" ")
if g2==f2 then
    disp (""+string(g2)+" is the root.")
    abort
elseif g2==e2 then
    disp (""+string(g2)+" is the root.")
    abort
elseif g2==d2 then
    disp (""+string(g2)+" is the root.")
    abort
else 
    horner(y,[g2])
end
g3=horner(y,[g2]) // g3=f(x3)
disp("value of f(x3):  "+string(g3)+" ")
if (g3*f3)<0 then
    h1=(g2+f2)/2
    disp("fourth approximation:  "+string(h1)+" ")
elseif (g3*e3)<0 then
    h1=(g2+e2)/2
    disp("fourth approximation:  "+string(h1)+" ")
elseif (g3*d3)<0 then
    h1=(g2+d2)/2
    disp("fourth approximation:  "+string(h1)+" ")
elseif (g3*b2)<0 then
    h1=(g2+b1)/2
    disp("fourth approximation:  "+string(h1)+" ")
elseif (g3*a2)<0 then
    h1=(g2+a1)/2
    disp("fourth approximation:  "+string(h1)+" ")
else 
    disp("ERROR.")
    abort
end
disp("Please input fourth approximation or x4 that is rounded-off to 3 decimal places including its zeroes.")
h2=input ("x4 or fourth approximation:  ")
disp("value of x4:  "+string(h2)+" ")
if h2==g2 then
    disp (""+string(h2)+" is the root.")
    abort
elseif h2==f2 then
    disp (""+string(h2)+" is the root.")
    abort
elseif h2==e2 then
    disp (""+string(h2)+" is the root.")
    abort
elseif h2==d2 then
    disp (""+string(h2)+" is the root.")
    abort
else 
    horner(y,[h2])
end
h3=horner(y,[h2]) // h3=f(x4)
disp("value of f(x4):  "+string(h3)+" ")
if (h3*g3)<0 then
    i1=(h2+g2)/2
    disp("fifth approximation:  "+string(i1)+" ")
elseif (h3*f3)<0 then
    i1=(h2+f2)/2
    disp("fifth approximation:  "+string(i1)+" ")
elseif (h3*e3)<0 then
    i1=(h2+e2)/2
    disp("fifth approximation:  "+string(i1)+" ")
elseif (h3*d3)<0 then
    i1=(h2+d2)/2
    disp("fifth approximation:  "+string(i1)+" ")
elseif (h3*b2)<0 then
    i1=(h2+b1)/2
    disp("fifth approximation:  "+string(i1)+" ")
elseif (h3*a2)<0 then
    i1=(h2+a1)/2
    disp("fifth approximation:  "+string(i1)+" ")
else 
    disp("ERROR.")
    abort
end
disp("Please input fifth approximation or x5 that is rounded-off to 3 decimal places including its zeroes.")
i2=input ("x5 or fifth approximation:  ")
disp("value of x5:  "+string(i2)+" ")
if i2==h2 then
    disp (""+string(i2)+" is the root.")
    abort
elseif i2==g2 then
    disp (""+string(i2)+" is the root.")
    abort
elseif i2==f2 then
    disp (""+string(i2)+" is the root.")
    abort
elseif i2==e2 then
    disp (""+string(i2)+" is the root.")
    abort
elseif i2==d2 then
    disp (""+string(i2)+" is the root.")
    abort
else 
    horner(y,[i2])
end
i3=horner(y,[i2]) // i3=f(x5)
disp("value of f(x5):  "+string(i3)+" ")
if (i3*h3)<0 then
    j1=(i2+h2)/2
    disp("sixth approximation:  "+string(j1)+" ")
elseif (i3*g3)<0 then
    j1=(i2+g2)/2
    disp("sixth approximation:  "+string(j1)+" ")
elseif (i3*f3)<0 then
    j1=(i2+f2)/2
    disp("sixth approximation:  "+string(j1)+" ")
elseif (i3*e3)<0 then
    j1=(i2+e2)/2
    disp("sixth approximation:  "+string(j1)+" ")
elseif (i3*d3)<0 then
    j1=(i2+d2)/2
    disp("sixth approximation:  "+string(j1)+" ")
elseif (i3*b2)<0 then
    j1=(i2+b1)/2
    disp("sixth approximation:  "+string(j1)+" ")
elseif (i3*a2)<0 then
    j1=(i2+a1)/2
    disp("sixth approximation:  "+string(j1)+" ")
else 
    disp("ERROR.")
    abort
end
disp("Please input sixth approximation or x6 that is rounded-off to 3 decimal places including its zeroes.")
j2=input ("x6 or sixth approximation:  ")
disp("value of x6:  "+string(j2)+" ")
if j2==i2 then
    disp (""+string(j2)+" is the root.")
    abort
elseif j2==h2 then
    disp (""+string(j2)+" is the root.")
    abort
elseif j2==g2 then
    disp (""+string(j2)+" is the root.")
    abort
elseif j2==f2 then
    disp (""+string(j2)+" is the root.")
    abort
elseif j2==e2 then
    disp (""+string(j2)+" is the root.")
    abort
elseif j2==d2 then
    disp (""+string(j2)+" is the root.")
    abort
else 
    horner(y,[j2])
end
j3=horner(y,[j2]) // j3=f(x6)
disp("value of f(x6):  "+string(j3)+" ")
if (j3*i3)<0 then
    k1=(j2+i2)/2
    disp("seventh approximation:  "+string(k1)+" ")
elseif (j3*h3)<0 then
    k1=(j2+h2)/2
    disp("seventh approximation:  "+string(k1)+" ")
elseif (j3*g3)<0 then
    k1=(j2+g2)/2
    disp("seventh approximation:  "+string(k1)+" ")
elseif (j3*f3)<0 then
    k1=(j2+f2)/2
    disp("seventh approximation:  "+string(k1)+" ")
elseif (j3*e3)<0 then
    k1=(j2+e2)/2
    disp("seventh approximation:  "+string(k1)+" ")
elseif (j3*d3)<0 then
    k1=(j2+d2)/2
    disp("seventh approximation:  "+string(k1)+" ")
elseif (j3*b2)<0 then
    k1=(j2+b1)/2
    disp("seventh approximation:  "+string(k1)+" ")
elseif (j3*a2)<0 then
    k1=(j2+a1)/2
    disp("seventh approximation:  "+string(k1)+" ")
else 
    disp("ERROR.")
    abort
end
disp("Please input seventh approximation or x7 that is rounded-off to 3 decimal places including its zeroes.")
k2=input ("x7 or seventh approximation:  ")
disp("value of x7:  "+string(k2)+" ")
if k2==j2 then
    disp (""+string(k2)+" is the root.")
    abort
elseif k2==i2 then
    disp (""+string(k2)+" is the root.")
    abort
elseif k2==h2 then
    disp (""+string(k2)+" is the root.")
    abort
elseif k2==g2 then
    disp (""+string(k2)+" is the root.")
    abort
elseif k2==f2 then
    disp (""+string(k2)+" is the root.")
    abort
elseif k2==e2 then
    disp (""+string(k2)+" is the root.")
    abort
elseif k2==d2 then
    disp (""+string(k2)+" is the root.")
    abort
else 
    horner(y,[k2])
end
k3=horner(y,[k2]) // k3=f(x7)
disp("value of f(x7):  "+string(k3)+" ")
if (k3*j3)<0 then
    l1=(j2+j2)/2
    disp("eigth approximation:  "+string(l1)+" ")
elseif (k3*i3)<0 then
    l1=(j2+i2)/2
    disp("eigth approximation:  "+string(l1)+" ")
elseif (k3*h3)<0 then
    l1=(j2+h2)/2
    disp("eigth approximation:  "+string(l1)+" ")
elseif (k3*g3)<0 then
    l1=(j2+g2)/2
    disp("eigth approximation:  "+string(l1)+" ")
elseif (k3*f3)<0 then
    l1=(j2+f2)/2
    disp("eigth approximation:  "+string(l1)+" ")
elseif (k3*e3)<0 then
    l1=(j2+e2)/2
    disp("eigth approximation:  "+string(l1)+" ")
elseif (k3*d3)<0 then
    l1=(j2+d2)/2
    disp("eigth approximation:  "+string(l1)+" ")
elseif (k3*b2)<0 then
    l1=(j2+b1)/2
    disp("eigth approximation:  "+string(l1)+" ")
elseif (k3*a2)<0 then
    l1=(j2+a1)/2
    disp("eigth approximation:  "+string(l1)+" ")
else 
    disp("ERROR.")
    abort
end
disp("Please input eigth approximation or x8 that is rounded-off to 3 decimal places including its zeroes.")
l2=input ("x8 or eigth approximation:  ")
disp("value of x8:  "+string(l2)+" ")
if l2==k2 then
    disp (""+string(l2)+" is the root.")
    abort
elseif l2==j2 then
    disp (""+string(l2)+" is the root.")
    abort
elseif l2==i2 then
    disp (""+string(l2)+" is the root.")
    abort
elseif l2==h2 then
    disp (""+string(l2)+" is the root.")
    abort
elseif l2==g2 then
    disp (""+string(l2)+" is the root.")
    abort
elseif l2==f2 then
    disp (""+string(l2)+" is the root.")
    abort
elseif l2==e2 then
    disp (""+string(l2)+" is the root.")
    abort
elseif l2==d2 then
    disp (""+string(l2)+" is the root.")
    abort
else 
    horner(y,[l2])
end
l3=horner(y,[l2]) // l3=f(x8)
disp("value of f(x8):  "+string(l3)+" ")
if (l3*k3)<0 then
    m1=(l2+k2)/2
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*j3)<0 then
    m1=(l2+j2)/2
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*i3)<0 then
    m1=(l2+i2)/2
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*h3)<0 then
    m1=(l2+h2)/2
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*g3)<0 then
    m1=(l2+g2)/2
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*f3)<0 then
    m1=(l2+f2)/2
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*e3)<0 then
    m1=(l2+e2)/2
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*d3)<0 then
    m1=(l2+d2)/2
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*b2)<0 then
    m1=(l2+b1)/2
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*a2)<0 then
    m1=(l2+a1)/2
    disp("ninth approximation:  "+string(m1)+" ")
else 
    disp("ERROR.")
    abort
end
disp("Please input ninth approximation or x9 that is rounded-off to 3 decimal places including its zeroes.")
m2=input ("x9 or ninth approximation:  ")
disp("value of x9:  "+string(m2)+" ")
if m2==l2 then
    disp (""+string(m2)+" is the root.")
    abort
elseif m2==k2 then
    disp (""+string(m2)+" is the root.")
    abort
elseif m2==j2 then
    disp (""+string(m2)+" is the root.")
    abort
elseif m2==i2 then
    disp (""+string(m2)+" is the root.")
    abort
elseif m2==h2 then
    disp (""+string(m2)+" is the root.")
    abort
elseif m2==g2 then
    disp (""+string(m2)+" is the root.")
    abort
elseif m2==f2 then
    disp (""+string(m2)+" is the root.")
    abort
elseif m2==e2 then
    disp (""+string(m2)+" is the root.")
    abort
elseif m2==d2 then
    disp (""+string(m2)+" is the root.")
    abort
else 
    horner(y,[m2])
end
m3=horner(y,[m2]) // m3=f(x9)
disp("value of f(x9):  "+string(m3)+" ")
if (m3*l3)<0 then
    n1=(m2+l2)/2
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*k3)<0 then
    n1=(m2+k2)/2
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*j3)<0 then
    n1=(m2+j2)/2
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*i3)<0 then
    n1=(m2+i2)/2
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*h3)<0 then
    n1=(m2+h2)/2
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*g3)<0 then
    n1=(m2+g2)/2
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*f3)<0 then
    n1=(m2+f2)/2
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*e3)<0 then
    n1=(m2+e2)/2
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*d3)<0 then
    n1=(m2+d2)/2
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*b2)<0 then
    n1=(m2+b1)/2
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*a2)<0 then
    n1=(m2+a1)/2
    disp("tenth approximation:  "+string(n1)+" ")
else 
    disp("ERROR.")
    abort
end
disp("Please input tenth approximation or x10 that is rounded-off to 3 decimal places including its zeroes.")
n2=input ("x10 or tenth approximation:  ")
disp("value of x10:  "+string(n2)+" ")
if n2==m2 then
    disp (""+string(n2)+" is the root.")
    abort
elseif n2==l2 then
    disp (""+string(n2)+" is the root.")
    abort
elseif n2==k2 then
    disp (""+string(n2)+" is the root.")
    abort
elseif n2==j2 then
    disp (""+string(n2)+" is the root.")
    abort
elseif n2==i2 then
    disp (""+string(n2)+" is the root.")
    abort
elseif n2==h2 then
    disp (""+string(n2)+" is the root.")
    abort
elseif n2==g2 then
    disp (""+string(n2)+" is the root.")
    abort
elseif n2==f2 then
    disp (""+string(n2)+" is the root.")
    abort
elseif n2==e2 then
    disp (""+string(n2)+" is the root.")
    abort
elseif n2==d2 then
    disp (""+string(n2)+" is the root.")
    abort
else 
    horner(y,[n2])
end
n3=horner(y,[n2]) // n3=f(x10)
disp("value of f(x10):  "+string(n3)+" ")
if (n3*m3)<0 then
    o1=(n2+m2)/2
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*l3)<0 then
    o1=(n2+l2)/2
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*k3)<0 then
    o1=(n2+k2)/2
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*j3)<0 then
    o1=(n2+j2)/2
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*i3)<0 then
    o1=(n2+i2)/2
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*h3)<0 then
    o1=(n2+h2)/2
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*g3)<0 then
    o1=(n2+g2)/2
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*f3)<0 then
    o1=(n2+f2)/2
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*e3)<0 then
    o1=(n2+e2)/2
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*d3)<0 then
    o1=(n2+d2)/2
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*b2)<0 then
    o1=(n2+b1)/2
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*a2)<0 then
    o1=(n2+a1)/2
    disp("eleventh approximation:  "+string(o1)+" ")
else 
    disp("ERROR.")
    abort
end
disp("Please input eleventh approximation or x11 that is rounded-off to 3 decimal places including its zeroes.")
o2=input ("x11 or eleventh approximation:  ")
disp("value of x11:  "+string(o2)+" ")
if o2==n2 then
    disp (""+string(o2)+" is the root.")
    abort
elseif o2==m2 then
    disp (""+string(o2)+" is the root.")
    abort
elseif o2==l2 then
    disp (""+string(o2)+" is the root.")
    abort
elseif o2==k2 then
    disp (""+string(o2)+" is the root.")
    abort
elseif o2==j2 then
    disp (""+string(o2)+" is the root.")
    abort
elseif o2==i2 then
    disp (""+string(n2)+" is the root.")
    abort
elseif o2==h2 then
    disp (""+string(o2)+" is the root.")
    abort
elseif o2==g2 then
    disp (""+string(o2)+" is the root.")
    abort
elseif o2==f2 then
    disp (""+string(o2)+" is the root.")
    abort
elseif o2==e2 then
    disp (""+string(o2)+" is the root.")
    abort
elseif o2==d2 then
    disp (""+string(o2)+" is the root.")
    abort
else 
    horner(y,[o2])
end
o3=horner(y,[o2]) // o3=f(x11)
disp("value of f(x11):  "+string(o3)+" ")
if (o3*n3)<0 then
    p1=(o2+n2)/2
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*m3)<0 then
    p1=(o2+m2)/2
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*l3)<0 then
    p1=(o2+l2)/2
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*k3)<0 then
    p1=(o2+k2)/2
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*j3)<0 then
    p1=(o2+j2)/2
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*i3)<0 then
    p1=(o2+i2)/2
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*h3)<0 then
    p1=(o2+h2)/2
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*g3)<0 then
    p1=(o2+g2)/2
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*f3)<0 then
    p1=(o2+f2)/2
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*e3)<0 then
    p1=(o2+e2)/2
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*d3)<0 then
    p1=(o2+d2)/2
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*b2)<0 then
    p1=(o2+b1)/2
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*a2)<0 then
    p1=(o2+a1)/2
    disp("twelfth approximation:  "+string(p1)+" ")
else 
    disp("ERROR.")
    abort
end
disp("Please input twelfth approximation or x12 that is rounded-off to 3 decimal places including its zeroes.")
p2=input ("x12 or twelfth approximation:  ")
disp("value of x12:  "+string(p2)+" ")
if p2==o2 then
    disp (""+string(p2)+" is the root.")
    abort
elseif p2==n2 then
    disp (""+string(p2)+" is the root.")
    abort
elseif p2==m2 then
    disp (""+string(p2)+" is the root.")
    abort
elseif p2==l2 then
    disp (""+string(p2)+" is the root.")
    abort
elseif p2==k2 then
    disp (""+string(p2)+" is the root.")
    abort
elseif p2==j2 then
    disp (""+string(p2)+" is the root.")
    abort
elseif p2==i2 then
    disp (""+string(p2)+" is the root.")
    abort
elseif p2==h2 then
    disp (""+string(p2)+" is the root.")
    abort
elseif p2==g2 then
    disp (""+string(p2)+" is the root.")
    abort
elseif p2==f2 then
    disp (""+string(p2)+" is the root.")
    abort
elseif p2==e2 then
    disp (""+string(p2)+" is the root.")
    abort
elseif p2==d2 then
    disp (""+string(p2)+" is the root.")
    abort
else 
    horner(y,[p2])
end
p3=horner(y,[p2]) // p3=f(x12)
disp("value of f(x12):  "+string(p3)+" ")
if (p3*o3)<0 then
    q1=(p2+o2)/2
    disp("twelfth approximation:  "+string(q1)+" ")
elseif (p3*n3)<0 then
    q1=(p2+n2)/2
    disp("twelfth approximation:  "+string(q1)+" ")
elseif (p3*m3)<0 then
    q1=(p2+m2)/2
    disp("twelfth approximation:  "+string(q1)+" ")
elseif (p3*l3)<0 then
    q1=(p2+l2)/2
    disp("twelfth approximation:  "+string(q1)+" ")
elseif (p3*k3)<0 then
    q1=(p2+k2)/2
    disp("twelfth approximation:  "+string(q1)+" ")
elseif (p3*j3)<0 then
    q1=(p2+j2)/2
    disp("twelfth approximation:  "+string(q1)+" ")
elseif (p3*i3)<0 then
    q1=(p2+i2)/2
    disp("twelfth approximation:  "+string(q1)+" ")
elseif (p3*h3)<0 then
    q1=(p2+h2)/2
    disp("twelfth approximation:  "+string(q1)+" ")
elseif (p3*g3)<0 then
    q1=(p2+g2)/2
    disp("twelfth approximation:  "+string(q1)+" ")
elseif (p3*f3)<0 then
    q1=(p2+f2)/2
    disp("twelfth approximation:  "+string(q1)+" ")
elseif (p3*e3)<0 then
    q1=(p2+e2)/2
    disp("twelfth approximation:  "+string(q1)+" ")
elseif (p3*d3)<0 then
    q1=(p2+d2)/2
    disp("twelfth approximation:  "+string(q1)+" ")
elseif (p3*b2)<0 then
    q1=(p2+b1)/2
    disp("twelfth approximation:  "+string(q1)+" ")
elseif (p3*a2)<0 then
    q1=(p2+a1)/2
    disp("twelfth approximation:  "+string(q1)+" ")
else 
    disp("ERROR.")
    abort
end
