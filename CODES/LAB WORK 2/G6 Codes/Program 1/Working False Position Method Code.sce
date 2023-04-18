clc
disp("Welcome to Group 6 Working False Position Method Root Approximator 1.0 (G6-WFPMRA 1.0)!")
disp("Version: 1.0 (TRIAL VERSION)")
disp("Current Version Capabilities: Can only approximate up to x15 or fifteenth approximation.")
disp("")
disp("How to Use G6-WFPMRA 1.0: Input polynomial function in this format: poly([a,b,c,-->nth],%x%,%coeff%)")
disp("")
disp("Wherein: Letters a,b,c,-->nth (excluding x) corresponds to the coefficients of your desired polynomial function in an ascending order in terms of degree.")
disp("Wherein: The symbol % should be replaced with quotation marks (IMPORTANT)")
disp("e.g. poly([1,2,3],%x%,%coeff%) will input 1+2x+3x^2")
disp("")
disp("Further instructions will be given as you progress onwards.")
disp(" ")
YES=1
NO=0
ANSWER=input ("Start the program? Input YES to proceed and NO to abort:  ")
if ANSWER==1 then
    disp("PROGRAM START!!")
    disp("")
    y=input ("Input polynomial function:        ")
    a1=input ("Input lower limit or value of a:  ")
    b1=input ("Input upper limit or value of b:  ")
elseif ANSWER==0 then
    clc
    disp("You have aborted the program. Thank you for using G6-WFPMRA 1.0!")
    abort
else 
    clc
    disp("ERROR:Instructions not followed. Automated abort command.")
    abort
end
disp("polynomial function:              "+string(y)+" ")
disp("lower limit or a:  "+string(a1)+" ")
disp("upper limit or b:  "+string(b1)+" ")
horner(y,[a1])
a2=horner(y,[a1]) // a2=f(a)
disp("value of f(a):     "+string(a2)+" ")
horner(y,[b1])
b2=horner(y,[b1]) // b2=f(b)
disp("value of f(b):     "+string(b2)+" ")
c1=a2*b2 // c1=f(a)*f(b)
if c1<0 then 
    d1=((a1*b2)-(b1*a2))/(b2-a2) // d1=x0 or initial approximation
    disp("initial approximation:  "+string(d1)+" ")
else 
    disp("ERROR: f(a)*f(b)is not less than 0.")
    disp("")
    disp("Please reinput lower and upper limits.")
    disp("")
    a1=input ("Input lower limit or value of a:  ")
    b1=input ("Input upper limit or value of b:  ")
    horner(y,[a1])
    a2=horner(y,[a1]) // a2=f(a)
    disp("value of f(a):     "+string(a2)+" ")
    horner(y,[b1])
    b2=horner(y,[b1]) // b2=f(b)
    disp("value of f(b):     "+string(b2)+" ")
    c1=a2*b2 // c1=f(a)*f(b)
    if c1<0 then 
    d1=((a1*b2)-(b1*a2))/(b2-a2) // d1=x0 or initial approximation
    disp("initial approximation:  "+string(d1)+" ")
    else
        disp("ERROR: f(a)*f(b)is not less than 0.")
        disp("")
        disp("Please reinput lower and upper limits.")
        disp("")
        a1=input ("Input lower limit or value of a:  ")
        b1=input ("Input upper limit or value of b:  ")
        horner(y,[a1])
        a2=horner(y,[a1]) // a2=f(a)
        disp("value of f(a):     "+string(a2)+" ")
        horner(y,[b1])
        b2=horner(y,[b1]) // b2=f(b)
        disp("value of f(b):     "+string(b2)+" ")
        c1=a2*b2 // c1=f(a)*f(b)
        if c1<0 then 
            d1=((a1*b2)-(b1*a2))/(b2-a2) // d1=x0 or initial approximation
            disp("initial approximation:  "+string(d1)+" ")
        else
            disp("ERROR: f(a)*f(b)is not less than 0.")
            disp("")
            disp("Please reinput lower and upper limits.")
            disp("")
            a1=input ("Input lower limit or value of a:  ")
            b1=input ("Input upper limit or value of b:  ")
            horner(y,[a1])
            a2=horner(y,[a1]) // a2=f(a)
            disp("value of f(a):     "+string(a2)+" ")
            horner(y,[b1])
            b2=horner(y,[b1]) // b2=f(b)
            disp("value of f(b):     "+string(b2)+" ")
            c1=a2*b2 // c1=f(a)*f(b)
            if c1<0 then 
                d1=((a1*b2)-(b1*a2))/(b2-a2) // d1=x0 or initial approximation
                disp("initial approximation:  "+string(d1)+" ")
            else
                clc
                disp("ERROR: Please Reboot Program to try again.")
                abort
            end
        end
    end
end
disp("Please input initial approximation or x0 that is rounded-off to 3 decimal places including its zeroes.")
d2=input ("x0 or initial approximation:  ")
disp("value of x0:  "+string(d2)+" ") //d2=x0
horner(y,[d2])
d3=horner(y,[d2]) // d3=f(x0)
disp("value of f(x0):    "+string(d3)+"")
if d3==0 then
    disp (""+string(d2)+" is the root.")
    abort
end
// f(x0)*f(a) or f(x0)*f(b)
if (d3*a2)<0 then
    e1=((d2*b2)-(b1*d3))/(b2-d3)   
    disp("first approximation:  "+string(e1)+"")
elseif (d3*b2)<0 then 
    e1=((d2*a2)-(a1*d3))/(a2-d3) 
    disp("first approximation:  "+string(e1)+"") 
else
    disp("ERROR.")
    abort
end
// e1=x1
disp("Please input first approximation or x1 that is rounded-off to 3 decimal places including its zeroes.")
e2=input ("x1 or first approximation:  ")
disp("value of x1:  "+string(e2)+" ")
if e2==d2 then
    disp (""+string(e2)+" is the root.")
    abort
else 
    horner(y,[e2])
end
e3=horner(y,[e2]) // e3=f(x1)
disp("value of f(x1):  "+string(e3)+" ")
if e3==0 then
    disp (""+string(e2)+" is the root.")
    abort
end
if (e3*d3)<0 then
    f1=((e2*d3)-(d2*e3))/(d3-e3)
    disp("second approximation:  "+string(f1)+" ")
elseif (e3*b2)<0 then
    f1=((e2*b2)-(b1*e3))/(b2-e3)
    disp("second approximation:  "+string(f1)+" ")
elseif (e3*a2)<0 then
    f1=((e2*a2)-(a1*e3))/(a2-e3)
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
elseif f2==d2 then
    disp (""+string(f2)+" is the root.")
    abort
else 
    horner(y,[f2])
end
f3=horner(y,[f2]) // f3=f(x2)
disp("value of f(x2):  "+string(f3)+" ")
if f3==0 then
    disp (""+string(f2)+" is the root.")
    abort
end
if (f3*e3)<0 then
    g1=((f2*e3)-(e2*f3))/(e3-f3)
    disp("third approximation:  "+string(g1)+" ")
elseif (f3*d3)<0 then
    g1=((f2*d3)-(d2*f3))/(d3-f3)
    disp("third approximation:  "+string(g1)+" ")
elseif (f3*b2)<0 then
    g1=((f2*b2)-(b1*f3))/(b2-f3)
    disp("third approximation:  "+string(g1)+" ")
elseif (f3*a2)<0 then
    g1=((f2*a2)-(a1*f3))/(a2-f3)
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
if g3==0 then
    disp (""+string(g2)+" is the root.")
    abort
end
if (g3*f3)<0 then
    h1=((g2*f3)-(f2*g3))/(f3-g3)
    disp("fourth approximation:  "+string(h1)+" ")
elseif (g3*e3)<0 then
    h1=((g2*e3)-(e2*g3))/(e3-g3)
    disp("fourth approximation:  "+string(h1)+" ")
elseif (g3*d3)<0 then
    h1=((g2*d3)-(d2*g3))/(d3-g3)
    disp("fourth approximation:  "+string(h1)+" ")
elseif (g3*b2)<0 then
    h1=((g2*b2)-(b1*g3))/(b2-g3)
    disp("fourth approximation:  "+string(h1)+" ")
elseif (g3*a2)<0 then
    h1=((g2*b2)-(a1*g3))/(a2-g3)
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
if h3==0 then
    disp (""+string(h2)+" is the root.")
    abort
end
if (h3*g3)<0 then
    i1=((h2*g3)-(g2*h3))/(g3-h3)
    disp("fifth approximation:  "+string(i1)+" ")
elseif (h3*f3)<0 then
    i1=((h2*f3)-(f2*h3))/(f3-h3)
    disp("fifth approximation:  "+string(i1)+" ")
elseif (h3*e3)<0 then
    i1=((h2*e3)-(e2*h3))/(e3-h3)
    disp("fifth approximation:  "+string(i1)+" ")
elseif (h3*d3)<0 then
    i1=((h2*d3)-(d2*h3))/(d3-h3)
    disp("fifth approximation:  "+string(i1)+" ")
elseif (h3*b2)<0 then
    i1=((h2*b2)-(b1*h3))/(b2-h3)
    disp("fifth approximation:  "+string(i1)+" ")
elseif (h3*a2)<0 then
    i1=((h2*a2)-(a1*h3))/(a2-h3)
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
if i3==0 then
    disp (""+string(i2)+" is the root.")
    abort
end
if (i3*h3)<0 then
    j1=((i2*h3)-(h2*i3))/(h3-i3)
    disp("sixth approximation:  "+string(j1)+" ")
elseif (i3*g3)<0 then
    j1=((i2*g3)-(g2*i3))/(g3-i3)
    disp("sixth approximation:  "+string(j1)+" ")
elseif (i3*f3)<0 then
    j1=((i2*f3)-(f2*i3))/(f3-i3)
    disp("sixth approximation:  "+string(j1)+" ")
elseif (i3*e3)<0 then
    j1=((i2*e3)-(e2*i3))/(e3-i3)
    disp("sixth approximation:  "+string(j1)+" ")
elseif (i3*d3)<0 then
    j1=((i2*d3)-(d2*i3))/(d3-i3)
    disp("sixth approximation:  "+string(j1)+" ")
elseif (i3*b2)<0 then
    j1=((i2*b2)-(b1*i3))/(b2-i3)
    disp("sixth approximation:  "+string(j1)+" ")
elseif (i3*a2)<0 then
    j1=((i2*a2)-(a1*i3))/(a2-i3)
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
if j3==0 then
    disp (""+string(j2)+" is the root.")
    abort
end
if (j3*i3)<0 then
    k1=((j2*i3)-(i2*j3))/(i3-j3)
    disp("seventh approximation:  "+string(k1)+" ")
elseif (j3*h3)<0 then
    k1=((j2*h3)-(h2*j3))/(h3-j3)
    disp("seventh approximation:  "+string(k1)+" ")
elseif (j3*g3)<0 then
    k1=((j2*g3)-(g2*j3))/(g3-j3)
    disp("seventh approximation:  "+string(k1)+" ")
elseif (j3*f3)<0 then
    k1=((j2*f3)-(f2*j3))/(f3-j3)
    disp("seventh approximation:  "+string(k1)+" ")
elseif (j3*e3)<0 then
    k1=((j2*e3)-(e2*j3))/(e3-j3)
    disp("seventh approximation:  "+string(k1)+" ")
elseif (j3*d3)<0 then
    k1=((j2*d3)-(d2*j3))/(d3-j3)
    disp("seventh approximation:  "+string(k1)+" ")
elseif (j3*b2)<0 then
    k1=((j2*b2)-(b1*j3))/(b2-j3)
    disp("seventh approximation:  "+string(k1)+" ")
elseif (j3*a2)<0 then
    k1=((j2*a2)-(a1*j3))/(a2-j3)
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
if k3==0 then
    disp (""+string(k2)+" is the root.")
    abort
end
if (k3*j3)<0 then
    l1=((k2*j3)-(j2*k3))/(j3-k3)
    disp("eigth approximation:  "+string(l1)+" ")
elseif (k3*i3)<0 then
    l1=((k2*i3)-(i2*k3))/(i3-k3)
    disp("eigth approximation:  "+string(l1)+" ")
elseif (k3*h3)<0 then
    l1=((k2*h3)-(h2*k3))/(h3-k3)
    disp("eigth approximation:  "+string(l1)+" ")
elseif (k3*g3)<0 then
    l1=((k2*g3)-(g2*k3))/(g3-k3)
    disp("eigth approximation:  "+string(l1)+" ")
elseif (k3*f3)<0 then
    l1=((k2*f3)-(f2*k3))/(f3-k3)
    disp("eigth approximation:  "+string(l1)+" ")
elseif (k3*e3)<0 then
    l1=((k2*e3)-(e2*k3))/(e3-k3)
    disp("eigth approximation:  "+string(l1)+" ")
elseif (k3*d3)<0 then
    l1=((k2*d3)-(d2*k3))/(d3-k3)
    disp("eigth approximation:  "+string(l1)+" ")
elseif (k3*b2)<0 then
    l1=((k2*b2)-(b1*k3))/(b2-k3)
    disp("eigth approximation:  "+string(l1)+" ")
elseif (k3*a2)<0 then
    l1=((k2*a2)-(a1*k3))/(a2-k3)
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
if l3==0 then
    disp(""+string(l2)+" is the root.")
    abort
end
if (l3*k3)<0 then
    m1=((l2*k3)-(k2*l3))/(k3-l3)
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*j3)<0 then
    m1=((l2*j3)-(j2*l3))/(j3-l3)
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*i3)<0 then
    m1=((l2*i3)-(i2*l3))/(i3-l3)
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*h3)<0 then
    m1=((l2*h3)-(h2*l3))/(h3-l3)
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*g3)<0 then
    m1=((l2*g3)-(g2*l3))/(g3-l3)
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*f3)<0 then
    m1=((l2*f3)-(f2*l3))/(f3-l3)
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*e3)<0 then
    m1=((l2*e3)-(e2*l3))/(e3-l3)
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*d3)<0 then
    m1=((l2*d3)-(d2*l3))/(d3-l3)
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*b2)<0 then
    m1=((l2*b2)-(b1*l3))/(b2-l3)
    disp("ninth approximation:  "+string(m1)+" ")
elseif (l3*a2)<0 then
    m1=((l2*a2)-(a1*l3))/(a2-l3)
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
if m3==0 then
    disp(""+string(m2)+" is the root.")
    abort
end
if (m3*l3)<0 then
    n1=((m2*l3)-(l2*m3))/(l3-m3)
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*k3)<0 then
    n1=((m2*k3)-(k2*m3))/(k3-m3)
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*j3)<0 then
    n1=((m2*j3)-(j2*m3))/(j3-m3)
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*i3)<0 then
    n1=((m2*i3)-(i2*m3))/(i3-m3)
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*h3)<0 then
    n1=((m2*h3)-(h2*m3))/(h3-m3)
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*g3)<0 then
    n1=((m2*g3)-(g2*m3))/(g3-m3)
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*f3)<0 then
    n1=((m2*f3)-(f2*m3))/(f3-m3)
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*e3)<0 then
    n1=((m2*e3)-(e2*m3))/(e3-m3)
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*d3)<0 then
    n1=((m2*d3)-(d2*m3))/(d3-m3)
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*b2)<0 then
    n1=((m2*b2)-(b1*m3))/(b2-m3)
    disp("tenth approximation:  "+string(n1)+" ")
elseif (m3*a2)<0 then
    n1=((m2*a2)-(a1*m3))/(a2-m3)
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
if n3==0 then
    disp (""+string(n2)+" is the root.")
    abort
end
if (n3*m3)<0 then
    o1=((n2*m3)-(m2*n3))/(m3-n3)
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*l3)<0 then
    o1=((n2*l3)-(l2*n3))/(l3-n3)
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*k3)<0 then
    o1=((n2*k3)-(k2*n3))/(k3-n3)
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*j3)<0 then
    o1=((n2*j3)-(j2*n3))/(j3-n3)
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*i3)<0 then
    o1=((n2*i3)-(i2*n3))/(i3-n3)
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*h3)<0 then
    o1=((n2*h3)-(h2*n3))/(h3-n3)
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*g3)<0 then
    o1=((n2*g3)-(g2*n3))/(g3-n3)
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*f3)<0 then
    o1=((n2*f3)-(f2*n3))/(f3-n3)
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*e3)<0 then
    o1=((n2*e3)-(e2*n3))/(e3-n3)
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*d3)<0 then
    o1=((n2*d3)-(d2*n3))/(d3-n3)
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*b2)<0 then
    o1=((n2*b2)-(b1*n3))/(b2-n3)
    disp("eleventh approximation:  "+string(o1)+" ")
elseif (n3*a2)<0 then
    o1=((n2*a2)-(a1*n3))/(a2-n3)
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
if o3==0 then
    disp (""+string(o2)+" is the root.")
    abort
end
if (o3*n3)<0 then
    p1=((o2*n3)-(n2*o3))/(n3-o3)
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*m3)<0 then
    p1=((o2*m3)-(m2*o3))/(m3-o3)
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*l3)<0 then
    p1=((o2*l3)-(l2*o3))/(l3-o3)
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*k3)<0 then
    p1=((o2*k3)-(k2*o3))/(k3-o3)
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*j3)<0 then
    p1=((o2*j3)-(j2*o3))/(j3-o3)
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*i3)<0 then
    p1=((o2*i3)-(i2*o3))/(i3-o3)
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*h3)<0 then
    p1=((o2*h3)-(h2*o3))/(h3-o3)
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*g3)<0 then
    p1=((o2*g3)-(g2*o3))/(g3-o3)
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*f3)<0 then
    p1=((o2*f3)-(f2*o3))/(f3-o3)
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*e3)<0 then
    p1=((o2*e3)-(e2*o3))/(e3-o3)
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*d3)<0 then
    p1=((o2*d3)-(d2*o3))/(d3-o3)
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*b2)<0 then
    p1=((o2*b2)-(b1*o3))/(b2-o3)
    disp("twelfth approximation:  "+string(p1)+" ")
elseif (o3*a2)<0 then
    p1=((o2*a2)-(a1*o3))/(a2-o3)
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
if p3==0 then
    disp (""+string(p2)+" is the root.")
    abort
end
if (p3*o3)<0 then
    q1=((p2*o3)-(o2*p3))/(o3-p3)
    disp("thirteenth approximation:  "+string(q1)+" ")
elseif (p3*n3)<0 then
    q1=((p2*n3)-(n2*p3))/(n3-p3)
    disp("thirteenth approximation:  "+string(q1)+" ")
elseif (p3*m3)<0 then
    q1=((p2*m3)-(m2*p3))/(m3-p3)
    disp("thirteenth approximation:  "+string(q1)+" ")
elseif (p3*l3)<0 then
    q1=((p2*l3)-(l2*p3))/(l3-p3)
    disp("thirteenth approximation:  "+string(q1)+" ")
elseif (p3*k3)<0 then
    q1=((p2*k3)-(k2*p3))/(k3-p3)
    disp("thirteenth approximation:  "+string(q1)+" ")
elseif (p3*j3)<0 then
    q1=((p2*j3)-(j2*p3))/(j3-p3)
    disp("thirteenth approximation:  "+string(q1)+" ")
elseif (p3*i3)<0 then
    q1=((p2*i3)-(i2*p3))/(i3-p3)
    disp("thirteenth approximation:  "+string(q1)+" ")
elseif (p3*h3)<0 then
    q1=((p2*h3)-(h2*p3))/(h3-p3)
    disp("thirteenth approximation:  "+string(q1)+" ")
elseif (p3*g3)<0 then
    q1=((p2*g3)-(g2*p3))/(g3-p3)
    disp("thirteenth approximation:  "+string(q1)+" ")
elseif (p3*f3)<0 then
    q1=((p2*f3)-(f2*p3))/(f3-p3)
    disp("thirteenth approximation:  "+string(q1)+" ")
elseif (p3*e3)<0 then
    q1=((p2*e3)-(e2*p3))/(e3-p3)
    disp("thirteenth approximation:  "+string(q1)+" ")
elseif (p3*d3)<0 then
    q1=((p2*d3)-(d2*p3))/(d3-p3)
    disp("thirteenth approximation:  "+string(q1)+" ")
elseif (p3*b2)<0 then
    q1=((p2*b2)-(b1*p3))/(b2-p3)
    disp("thirteenth approximation:  "+string(q1)+" ")
elseif (p3*a2)<0 then
    q1=((p2*a2)-(a1*p3))/(a2-p3)
    disp("thirteenth approximation:  "+string(q1)+" ")
else 
    disp("ERROR.")
    abort
end
disp("Please input thirteenth approximation or x13 that is rounded-off to 3 decimal places including its zeroes.")
q2=input ("x13 or thirteenth approximation:  ")
disp("value of x13:  "+string(q2)+" ")
if q2==p2 then
    disp (""+string(q2)+" is the root.")
    abort
elseif q2==o2 then
    disp (""+string(q2)+" is the root.")
    abort
elseif q2==n2 then
    disp (""+string(q2)+" is the root.")
    abort
elseif q2==m2 then
    disp (""+string(q2)+" is the root.")
    abort
elseif q2==l2 then
    disp (""+string(q2)+" is the root.")
    abort
elseif q2==k2 then
    disp (""+string(q2)+" is the root.")
    abort
elseif q2==j2 then
    disp (""+string(q2)+" is the root.")
    abort
elseif q2==i2 then
    disp (""+string(q2)+" is the root.")
    abort
elseif q2==h2 then
    disp (""+string(q2)+" is the root.")
    abort
elseif q2==g2 then
    disp (""+string(q2)+" is the root.")
    abort
elseif q2==f2 then
    disp (""+string(q2)+" is the root.")
    abort
elseif q2==e2 then
    disp (""+string(q2)+" is the root.")
    abort
elseif q2==d2 then
    disp (""+string(q2)+" is the root.")
    abort
else 
    horner(y,[q2])
end
q3=horner(y,[q2]) // q3=f(x13)
disp("value of f(x13):  "+string(q3)+" ")
if q3==0 then
    disp (""+string(q2)+" is the root.")
    abort
end
if (q3*p3)<0 then
    r1=((q2*p3)-(p2*q3))/(p3-q3)
    disp("fourteenth approximation:  "+string(r1)+" ")
elseif (q3*o3)<0 then
    r1=((q2*o3)-(o2*q3))/(o3-q3)
    disp("fourteenth approximation:  "+string(r1)+" ")
elseif (q3*n3)<0 then
    r1=((q2*n3)-(n2*q3))/(n3-q3)
    disp("fourteenth approximation:  "+string(r1)+" ")
elseif (q3*m3)<0 then
    r1=((q2*m3)-(m2*q3))/(m3-q3)
    disp("fourteenth approximation:  "+string(r1)+" ")
elseif (q3*l3)<0 then
    r1=((q2*l3)-(l2*q3))/(l3-q3)
    disp("fourteenth approximation:  "+string(r1)+" ")
elseif (q3*k3)<0 then
    r1=((q2*k3)-(k2*q3))/(k3-q3)
    disp("fourteenth approximation:  "+string(r1)+" ")
elseif (q3*j3)<0 then
    r1=((q2*j3)-(j2*q3))/(j3-q3)
    disp("fourteenth approximation:  "+string(r1)+" ")
elseif (q3*i3)<0 then
    r1=((q2*i3)-(i2*q3))/(i3-q3)
    disp("fourteenth approximation:  "+string(r1)+" ")
elseif (q3*h3)<0 then
    r1=((q2*h3)-(h2*q3))/(h3-q3)
    disp("fourteenth approximation:  "+string(r1)+" ")
elseif (q3*g3)<0 then
    r1=((q2*g3)-(g2*q3))/(g3-q3)
    disp("fourteenth approximation:  "+string(r1)+" ")
elseif (q3*f3)<0 then
    r1=((q2*f3)-(f2*q3))/(f3-q3)
    disp("fourteenth approximation:  "+string(r1)+" ")
elseif (q3*e3)<0 then
    r1=((q2*e3)-(e2*q3))/(e3-q3)
    disp("fourteenth approximation:  "+string(r1)+" ")
elseif (q3*d3)<0 then
    r1=((q2*d3)-(d2*q3))/(d3-q3)
    disp("fourteenth approximation:  "+string(r1)+" ")
elseif (q3*b2)<0 then
    r1=((q2*b2)-(b1*q3))/(b2-q3)
    disp("fourteenth approximation:  "+string(r1)+" ")
elseif (q3*a2)<0 then
    r1=((q2*a2)-(a1*q3))/(a2-q3)
    disp("fourteenth approximation:  "+string(r1)+" ")
else 
    disp("ERROR.")
    abort
end
disp("Please input fourteenth approximation or x14 that is rounded-off to 3 decimal places including its zeroes.")
r2=input ("x14 or fourteenth approximation:  ")
disp("value of x14:  "+string(r2)+" ")
if r2==q2 then
    disp (""+string(r2)+" is the root.")
    abort
elseif r2==p2 then
    disp (""+string(r2)+" is the root.")
    abort
elseif r2==o2 then
    disp (""+string(r2)+" is the root.")
    abort
elseif r2==n2 then
    disp (""+string(r2)+" is the root.")
    abort
elseif r2==m2 then
    disp (""+string(r2)+" is the root.")
    abort
elseif r2==l2 then
    disp (""+string(r2)+" is the root.")
    abort
elseif r2==k2 then
    disp (""+string(r2)+" is the root.")
    abort
elseif r2==j2 then
    disp (""+string(r2)+" is the root.")
    abort
elseif r2==i2 then
    disp (""+string(r2)+" is the root.")
    abort
elseif r2==h2 then
    disp (""+string(r2)+" is the root.")
    abort
elseif r2==g2 then
    disp (""+string(r2)+" is the root.")
    abort
elseif r2==f2 then
    disp (""+string(r2)+" is the root.")
    abort
elseif r2==e2 then
    disp (""+string(r2)+" is the root.")
    abort
elseif r2==d2 then
    disp (""+string(r2)+" is the root.")
    abort
else 
    horner(y,[r2])
end
r3=horner(y,[r2]) // r3=f(x14)
disp("value of f(x14):  "+string(r3)+" ")
if r3==0 then
    disp (""+string(r2)+" is the root.")
    abort
end
if (r3*q3)<0 then
    s1=((r2*q3)-(q2*r3))/(q3-r3)
    disp("fifteenth approximation:  "+string(s1)+" ")
elseif (r3*p3)<0 then
    s1=((r2*p3)-(p2*r3))/(p3-r3)
    disp("fifteenth approximation:  "+string(s1)+" ")
elseif (r3*o3)<0 then
    s1=((r2*o3)-(o2*r3))/(o3-r3)
    disp("fifteenth approximation:  "+string(s1)+" ")
elseif (r3*n3)<0 then
    s1=((r2*n3)-(n2*r3))/(n3-r3)
    disp("fifteenth approximation:  "+string(s1)+" ")
elseif (r3*m3)<0 then
    s1=((r2*m3)-(m2*r3))/(m3-r3)
    disp("fifteenth approximation:  "+string(s1)+" ")
elseif (r3*l3)<0 then
    s1=((r2*l3)-(l2*r3))/(l3-r3)
    disp("fifteenth approximation:  "+string(s1)+" ")
elseif (r3*k3)<0 then
    s1=((r2*k3)-(k2*r3))/(k3-r3)
    disp("fifteenth approximation:  "+string(s1)+" ")
elseif (r3*j3)<0 then
    s1=((r2*j3)-(j2*r3))/(j3-r3)
    disp("fifteenth approximation:  "+string(s1)+" ")
elseif (r3*i3)<0 then
    s1=((r2*i3)-(i2*r3))/(i3-r3)
    disp("fifteenth approximation:  "+string(s1)+" ")
elseif (r3*h3)<0 then
    s1=((r2*h3)-(h2*r3))/(h3-r3)
    disp("fifteenth approximation:  "+string(s1)+" ")
elseif (r3*g3)<0 then
    s1=((r2*g3)-(g2*r3))/(g3-r3)
    disp("fifteenth approximation:  "+string(s1)+" ")
elseif (r3*f3)<0 then
    s1=((r2*f3)-(f2*r3))/(f3-r3)
    disp("fifteenth approximation:  "+string(s1)+" ")
elseif (r3*e3)<0 then
    s1=((r2*e3)-(e2*r3))/(e3-r3)
    disp("fifteenth approximation:  "+string(s1)+" ")
elseif (r3*d3)<0 then
    s1=((r2*d3)-(d2*r3))/(d3-r3)
    disp("fifteenth approximation:  "+string(s1)+" ")
elseif (r3*b2)<0 then
    s1=((r2*b2)-(b1*r3))/(b2-r3)
    disp("fifteenth approximation:  "+string(s1)+" ")
elseif (r3*a2)<0 then
    s1=((r2*a2)-(a1*r3))/(a2-r3)
    disp("fifteenth approximation:  "+string(s1)+" ")
else 
    disp("ERROR.")
    abort
end
disp("Please input fifteenth approximation or x15 that is rounded-off to 3 decimal places including its zeroes.")
s2=input ("x15 or fifteenth approximation:  ")
disp("value of x15:  "+string(s2)+" ")
if s2==r2 then
    disp (""+string(s2)+" is the root.")
    abort
elseif s2==q2 then
    disp (""+string(s2)+" is the root.")
    abort
elseif s2==p2 then
    disp (""+string(s2)+" is the root.")
    abort
elseif s2==o2 then
    disp (""+string(s2)+" is the root.")
    abort
elseif s2==n2 then
    disp (""+string(s2)+" is the root.")
    abort
elseif s2==m2 then
    disp (""+string(s2)+" is the root.")
    abort
elseif s2==l2 then
    disp (""+string(s2)+" is the root.")
    abort
elseif s2==k2 then
    disp (""+string(s2)+" is the root.")
    abort
elseif s2==j2 then
    disp (""+string(s2)+" is the root.")
    abort
elseif s2==i2 then
    disp (""+string(s2)+" is the root.")
    abort
elseif s2==h2 then
    disp (""+string(s2)+" is the root.")
    abort
elseif s2==g2 then
    disp (""+string(s2)+" is the root.")
    abort
elseif s2==f2 then
    disp (""+string(s2)+" is the root.")
    abort
elseif s2==e2 then
    disp (""+string(s2)+" is the root.")
    abort
elseif s2==d2 then
    disp (""+string(s2)+" is the root.")
    abort
else 
    horner(y,[s2])
end
s3=horner(y,[s2]) // s3=f(x15)
disp("value of f(x15):  "+string(s3)+" ")
if s3==0 then
    disp (""+string(s2)+" is the root.")
    abort
end
if (s3*r3)<0 then
    t1=((s2*r3)-(r2*s3))/(r3-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
elseif (s3*q3)<0 then
    t1=((s2*q3)-(q2*s2))/(q3-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
elseif (s3*p3)<0 then
    t1=((s2*p3)-(p2*s2))/(p3-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
elseif (s3*o3)<0 then
    t1=((s2*o3)-(o2*r3))/(o3-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
elseif (s3*n3)<0 then
    t1=((s2*n3)-(n2*r3))/(n3-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
elseif (s3*m3)<0 then
    t1=((s2*m3)-(m2*r3))/(m3-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
elseif (s3*l3)<0 then
    t1=((s2*l3)-(l2*r3))/(l3-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
elseif (s3*k3)<0 then
    t1=((s2*k3)-(k2*r3))/(k3-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
elseif (s3*j3)<0 then
    t1=((s2*j3)-(j2*r3))/(j3-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
elseif (s3*i3)<0 then
    t1=((s2*i3)-(i2*r3))/(i3-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
elseif (s3*h3)<0 then
    t1=((s2*h3)-(h2*r3))/(h3-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
elseif (s3*g3)<0 then
    t1=((s2*g3)-(g2*r3))/(g3-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
elseif (s3*f3)<0 then
    t1=((s2*f3)-(f2*r3))/(f3-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
elseif (s3*e3)<0 then
    t1=((s2*e3)-(e2*r3))/(e3-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
elseif (s3*d3)<0 then
    t1=((s2*d3)-(d2*r3))/(d3-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
elseif (s3*b2)<0 then
    t1=((s2*b2)-(b1*r3))/(b2-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
elseif (s3*a2)<0 then
    t1=((s2*a2)-(a1*r3))/(a2-s3)
    disp("fifteenth approximation:  "+string(t1)+" ")
else 
    disp("ERROR.")
    abort
end