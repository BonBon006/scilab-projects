clc
a=123
b=213
c=312
yes=1
no=0
disp("What type is your g(x)? Choose the letter that corresponds to your choice below.")
disp("(a) linear or nonlinear polynomial equation")
disp("(b) rational polynomial equation")
disp("(c) irrational polynomial equation (radical)")
disp("")
ANSWER2=input (" Your Choice:  ")
if ANSWER2==123 then
    y=input (" Input your g(x):  ")
    x=input (" Input your x0:  ")
    z=horner(y,[x])
    z1=z*1000
    z2=int(z1)
    x1_rounded=z2/1000
elseif ANSWER2==213 then
    x=poly(0,"x")
    y=input (" Input your g(x):  ")
    x=input (" Input your x0:  ")
    z=horner(y,[x])
    z1=z*1000
    z2=int(z1)
    x1_rounded=z2/1000
elseif ANSWER2==312 then
    y=input (" Input your g(x):  ")
    x=input (" Input your x0:  ")
    z=horner(y,[x])
    z_nthroot=input (" Input your nthroot:  ")
    x1=nthroot (z,z_nthroot)
    x2=x1*1000
    x3=int(x2)
    x1_rounded=x3/1000
else
    clc
    disp("error.")
    abort
end
// x0 or initial approxiumation
disp("x0 or initial approximation:  "+string(x)+"")
// x1 or first approximation
a1=x1_rounded;
disp("x1 or first approximation:  "+string(x1_rounded)+"")
// LINEAR, NONLINEAR, OR RATIONAL POLYNOMIAL ALGORITHM BRANCH
elseif ANSWER2==123 | ANSWER==213
    a2=horner(y,[a1])
    a3=nthroot (a2,z_nthroot)
    a4=a3*1000
    a5=int(a4)
    x2_rounded=a5/1000
// x2 or second approximation
    disp("x2 or second approximation:  "+string(x2_rounded)+"")
    if x2_rounded==x1_rounded then
    disp("The root is "+string(x2_rounded)+"")
    abort
    end
    b1=x2_rounded
    b2=horner(y,[b1])
    b3=nthroot (b2,z_nthroot)
    b4=b3*1000
    b5=int(b4)
    x3_rounded=b5/1000
// x3 or third approximation
    disp("x3 or third approximation:  "+string(x3_rounded)+"")
    if x3_rounded==x2_rounded then
    disp("The root is "+string(x3_rounded)+"")
    abort
    end
    c1=x3_rounded
    c2=horner(y,[c1])
    c3=nthroot (c2,z_nthroot)
    c4=c3*1000
    c5=int(c4)
    x4_rounded=c5/1000
// x4 or fourth approximation
    disp("x4 or fourth approximation:  "+string(x4_rounded)+"")
    if x4_rounded==x3_rounded then
    disp("The root is "+string(x4_rounded)+"")
    abort
    end
    d1=x4_rounded
    d2=horner(y,[d1])
    d3=nthroot (d2,z_nthroot)
    d4=d3*1000
    d5=int(d4)
    x5_rounded=d5/1000
// x5 or fifth approximation
    disp("x5 or fifth approximation:  "+string(x5_rounded)+"")
    if x5_rounded==x4_rounded then
        disp("The root is "+string(x5_rounded)+"")
        abort
    end
    e1=x5_rounded
    e2=horner(y,[e1])
    e3=nthroot (e2,z_nthroot)
    e4=e3*1000
    e5=int(e4)
    x6_rounded=e5/1000
// x6 or sixth approximation
    disp("x6 or sixth approximation:  "+string(x6_rounded)+"")
    if x6_rounded==x5_rounded then
        disp("The root is "+string(x6_rounded)+"")
        abort
    end
    f1=x6_rounded
    f2=horner(y,[f1])
    f3=nthroot (f2,z_nthroot)
    f4=f3*1000
    f5=int(f4)
    x7_rounded=f5/1000
// x7 or seventh approximation
    disp("x7 or seventh approximation:  "+string(x7_rounded)+"")
    if x7_rounded==x6_rounded then
        disp("The root is "+string(x7_rounded)+"")
        abort
    end
    g1=x7_rounded
    g2=horner(y,[g1])
    g3=nthroot (g2,z_nthroot)
    g4=g3*1000
    g5=int(g4)
    x8_rounded=g5/1000
// x8 or eighth approximation
    disp("x8 or eighth approximation:  "+string(x8_rounded)+"")
    if x8_rounded==x7_rounded then
        disp("The root is "+string(x8_rounded)+"")
        abort
    end
    h1=x8_rounded
    h2=horner(y,[h1])
    h3=nthroot (h2,z_nthroot)
    h4=h3*1000
    h5=int(h4)
    x9_rounded=h5/1000
// x9 or ninth approximation
    disp("x9 or ninth approximation:  "+string(x9_rounded)+"")
    if x9_rounded==x8_rounded then
        disp("The root is "+string(x9_rounded)+"")
        abort
    end
    i1=x9_rounded
    i2=horner(y,[i1])
    i3=nthroot (i2,z_nthroot)
    i4=i3*1000
    i5=int(i4)
    x10_rounded=i5/1000
// x10 or tenth approximation
    disp("x10 or tenth approximation:  "+string(x10_rounded)+"")
    if x10_rounded==x9_rounded then
        disp("The root is "+string(x10_rounded)+"")
        abort
    end
    j1=x10_rounded
    j2=horner(y,[j1])
    j3=nthroot (j2,z_nthroot)
    j4=j3*1000
    j5=int(j4)
    x11_rounded=j5/1000
// x11 or eleventh approximation
    disp("x11 or eleventh approximation:  "+string(x11_rounded)+"")
    if x11_rounded==x10_rounded then
        disp("The root is "+string(x11_rounded)+"")
        abort
    end
    k1=x11_rounded
    k2=horner(y,[k1])
    k3=nthroot (k2,z_nthroot)
    k4=k3*1000
    k5=int(k4)
    x12_rounded=k5/1000
// x12 or twelfth approximation
    disp("x12 or twelfth approximation:  "+string(x12_rounded)+"")
    if x12_rounded==x11_rounded then
        disp("The root is "+string(x12_rounded)+"")
        abort
    end
    l1=x12_rounded
    l2=horner(y,[l1])
    l3=nthroot (l2,z_nthroot)
    l4=l3*1000
    l5=int(l4)
    x13_rounded=l5/1000
// x13 or thirteenth approximation
    disp("x13 or tirtheenth approximation:  "+string(x13_rounded)+"")
    if x13_rounded==x12_rounded then
        disp("The root is "+string(x13_rounded)+"")
        abort
    end
    m1=x13_rounded
    m2=horner(y,[m1])
    m3=nthroot (m2,z_nthroot)
    m4=m3*1000
    m5=int(m4)
    x14_rounded=m5/1000
// x14 or fourteenth approximation
    disp("x14 or fourteenth approximation:  "+string(x14_rounded)+"")
    if x14_rounded==x13_rounded then
        disp("The root is "+string(x14_rounded)+"")
        abort
    end
    n1=x14_rounded
    n2=horner(y,[n1])
    n3=nthroot (n2,z_nthroot)
    n4=n3*1000
    n5=int(n4)
    x15_rounded=n5/1000
// x15 or fifteenth approximation
    disp("x15 or fifteenth approximation:  "+string(x15_rounded)+"")
    if x15_rounded==x14_rounded then
        disp("The root is "+string(x15_rounded)+"")
        abort
    end
    o1=x15_rounded
    o2=horner(y,[o1])
    o3=nthroot (o2,z_nthroot)
    o4=o3*1000
    o5=int(o4)
    x16_rounded=o5/1000
// x16 or sixteenth approximation
    disp("x16 or sixteenth approximation:  "+string(x16_rounded)+"")
    if x16_rounded==x15_rounded then
        disp("The root is "+string(x16_rounded)+"")
        abort
    end
    p1=x16_rounded
    p2=horner(y,[p1])
    p3=nthroot (p2,z_nthroot)
    p4=p3*1000
    p5=int(p4)
    x17_rounded=o5/1000
// x17 or seventeenth approximation
    disp("x17 or seventeenth approximation:  "+string(x17_rounded)+"")
    if x17_rounded==x16_rounded then
        disp("The root is "+string(x17_rounded)+"")
        abort
    end
    q1=x17_rounded
    q2=horner(y,[q1])
    q3=nthroot (q2,z_nthroot)
    q4=q3*1000
    q5=int(q4)
    x18_rounded=o5/1000
// x18 or eighteenth approximation
    disp("x18 or eighteenth approximation:  "+string(x18_rounded)+"")
    if x18_rounded==x17_rounded then
        disp("The root is "+string(x18_rounded)+"")
        abort
    end
    r1=x18_rounded
    r2=horner(y,[r1])
    r3=nthroot (r2,z_nthroot)
    r4=r3*1000
    r5=int(r4)
    x19_rounded=r5/1000
// x19 or nineteenth approximation
    disp("x19 or nineteenth approximation:  "+string(x19_rounded)+"")
    if x19_rounded==x18_rounded then
        disp("The root is "+string(x19_rounded)+"")
        abort
    end
    s1=x19_rounded
    s2=horner(y,[s1])
    s3=nthroot (s2,z_nthroot)
    s4=s3*1000
    s5=int(s4)
    x20_rounded=s5/1000
// x20 or twentieth approximation
    disp("x20 or twentieth approximation:  "+string(x20_rounded)+"")
    if x20_rounded==x19_rounded then
        disp("The root is "+string(x20_rounded)+"")
        abort
    end
    t1=x20_rounded
    t2=horner(y,[t1])
    t3=nthroot (t2,z_nthroot)
    t4=t3*1000
    t5=int(t4)
    x21_rounded=t5/1000
// x21 or twenty-first approximation
    disp("x21 or twenty-first approximation:  "+string(x21_rounded)+"")
    if x21_rounded==x20_rounded then
        disp("The root is "+string(x21_rounded)+"")
        abort
    end
    u1=x21_rounded    
    u2=horner(y,[u1])
    u3=nthroot (u2,z_nthroot)
    u4=u3*1000
    u5=int(u4)
    x22_rounded=u5/1000
// x22 or twenty-second approximation
    disp("x22 or twenty-second approximation:  "+string(x22_rounded)+"")
    if x22_rounded==x21_rounded then
        disp("The root is "+string(x22_rounded)+"")
        abort
    end
    v1=x22_rounded
    v2=horner(y,[v1])
    v3=nthroot (v2,z_nthroot)
    v4=v3*1000
    v5=int(v4)
    x23_rounded=v5/1000
// x23 or twenty-third approximation
    disp("x23 or twenty-third approximation:  "+string(x23_rounded)+"")
    if x23_rounded==x22_rounded then
        disp("The root is "+string(x23_rounded)+"")
        abort
    end
    w1=x23_rounded
    w2=horner(y,[w1])
    w3=nthroot (w2,z_nthroot)
    w4=w3*1000
    w5=int(w4)
    x24_rounded=w5/1000
// x24 or twenty-fourth approximation
    disp("x24 or twenty-fourth approximation:  "+string(x24_rounded)+"")
    if x24_rounded==x23_rounded then
        disp("The root is "+string(x24_rounded)+"")
        abort
    end
    x_x1=x24_rounded
    x_x1_2=horner(y,[x_x1])
    x_x1_3=nthroot (x_x1_2,z_nthroot)
    x_x1_4=x_x1_3*1000
    x_x1_5=int(x_x1_4)
    x24_rounded=x_x1_5/1000
// x25 or twenty-fifth approximation
    disp("x25 or twenty-fifth approximation:  "+string(x25_rounded)+"")
    if x25_rounded==x24_rounded then
        disp("The root is "+string(x25_rounded)+"")
        abort
    else
        disp("ERROR: Cannot approximate anymore! Exceeded the maximum capabilities of the program.")
        disp("Please wait for the next patch update of the current version!")
        abort
    end
// RADICAL 
elseif ANSWER2==312 then
    a2=horner(y,[a1])
    a3=nthroot (a2,z_nthroot)
    a4=a3*1000
    a5=int(a4)
    x2_rounded=a5/1000
// x2 or second approximation
    disp("x2 or second approximation:  "+string(x2_rounded)+"")
    if x2_rounded==x1_rounded then
    disp("The root is "+string(x2_rounded)+"")
    abort
    end
    b1=x2_rounded
    b2=horner(y,[b1])
    b3=nthroot (b2,z_nthroot)
    b4=b3*1000
    b5=int(b4)
    x3_rounded=b5/1000
// x3 or third approximation
    disp("x3 or third approximation:  "+string(x3_rounded)+"")
    if x3_rounded==x2_rounded then
    disp("The root is "+string(x3_rounded)+"")
    abort
    end
    c1=x3_rounded
    c2=horner(y,[c1])
    c3=nthroot (c2,z_nthroot)
    c4=c3*1000
    c5=int(c4)
    x4_rounded=c5/1000
// x4 or fourth approximation
    disp("x4 or fourth approximation:  "+string(x4_rounded)+"")
    if x4_rounded==x3_rounded then
    disp("The root is "+string(x4_rounded)+"")
    abort
    end
    d1=x4_rounded
    d2=horner(y,[d1])
    d3=nthroot (d2,z_nthroot)
    d4=d3*1000
    d5=int(d4)
    x5_rounded=d5/1000
// x5 or fifth approximation
    disp("x5 or fifth approximation:  "+string(x5_rounded)+"")
    if x5_rounded==x4_rounded then
        disp("The root is "+string(x5_rounded)+"")
        abort
    end
    e1=x5_rounded
    e2=horner(y,[e1])
    e3=nthroot (e2,z_nthroot)
    e4=e3*1000
    e5=int(e4)
    x6_rounded=e5/1000
// x6 or sixth approximation
    disp("x6 or sixth approximation:  "+string(x6_rounded)+"")
    if x6_rounded==x5_rounded then
        disp("The root is "+string(x6_rounded)+"")
        abort
    end
    f1=x6_rounded
    f2=horner(y,[f1])
    f3=nthroot (f2,z_nthroot)
    f4=f3*1000
    f5=int(f4)
    x7_rounded=f5/1000
// x7 or seventh approximation
    disp("x7 or seventh approximation:  "+string(x7_rounded)+"")
    if x7_rounded==x6_rounded then
        disp("The root is "+string(x7_rounded)+"")
        abort
    end
    g1=x7_rounded
    g2=horner(y,[g1])
    g3=nthroot (g2,z_nthroot)
    g4=g3*1000
    g5=int(g4)
    x8_rounded=g5/1000
// x8 or eighth approximation
    disp("x8 or eighth approximation:  "+string(x8_rounded)+"")
    if x8_rounded==x7_rounded then
        disp("The root is "+string(x8_rounded)+"")
        abort
    end
    h1=x8_rounded
    h2=horner(y,[h1])
    h3=nthroot (h2,z_nthroot)
    h4=h3*1000
    h5=int(h4)
    x9_rounded=h5/1000
// x9 or ninth approximation
    disp("x9 or ninth approximation:  "+string(x9_rounded)+"")
    if x9_rounded==x8_rounded then
        disp("The root is "+string(x9_rounded)+"")
        abort
    end
    i1=x9_rounded
    i2=horner(y,[i1])
    i3=nthroot (i2,z_nthroot)
    i4=i3*1000
    i5=int(i4)
    x10_rounded=i5/1000
// x10 or tenth approximation
    disp("x10 or tenth approximation:  "+string(x10_rounded)+"")
    if x10_rounded==x9_rounded then
        disp("The root is "+string(x10_rounded)+"")
        abort
    end
    j1=x10_rounded
    j2=horner(y,[j1])
    j3=nthroot (j2,z_nthroot)
    j4=j3*1000
    j5=int(j4)
    x11_rounded=j5/1000
// x11 or eleventh approximation
    disp("x11 or eleventh approximation:  "+string(x11_rounded)+"")
    if x11_rounded==x10_rounded then
        disp("The root is "+string(x11_rounded)+"")
        abort
    end
    k1=x11_rounded
    k2=horner(y,[k1])
    k3=nthroot (k2,z_nthroot)
    k4=k3*1000
    k5=int(k4)
    x12_rounded=k5/1000
// x12 or twelfth approximation
    disp("x12 or twelfth approximation:  "+string(x12_rounded)+"")
    if x12_rounded==x11_rounded then
        disp("The root is "+string(x12_rounded)+"")
        abort
    end
    l1=x12_rounded
    l2=horner(y,[l1])
    l3=nthroot (l2,z_nthroot)
    l4=l3*1000
    l5=int(l4)
    x13_rounded=l5/1000
// x13 or thirteenth approximation
    disp("x13 or tirtheenth approximation:  "+string(x13_rounded)+"")
    if x13_rounded==x12_rounded then
        disp("The root is "+string(x13_rounded)+"")
        abort
    end
    m1=x13_rounded
    m2=horner(y,[m1])
    m3=nthroot (m2,z_nthroot)
    m4=m3*1000
    m5=int(m4)
    x14_rounded=m5/1000
// x14 or fourteenth approximation
    disp("x14 or fourteenth approximation:  "+string(x14_rounded)+"")
    if x14_rounded==x13_rounded then
        disp("The root is "+string(x14_rounded)+"")
        abort
    end
    n1=x14_rounded
    n2=horner(y,[n1])
    n3=nthroot (n2,z_nthroot)
    n4=n3*1000
    n5=int(n4)
    x15_rounded=n5/1000
// x15 or fifteenth approximation
    disp("x15 or fifteenth approximation:  "+string(x15_rounded)+"")
    if x15_rounded==x14_rounded then
        disp("The root is "+string(x15_rounded)+"")
        abort
    end
    o1=x15_rounded
    o2=horner(y,[o1])
    o3=nthroot (o2,z_nthroot)
    o4=o3*1000
    o5=int(o4)
    x16_rounded=o5/1000
// x16 or sixteenth approximation
    disp("x16 or sixteenth approximation:  "+string(x16_rounded)+"")
    if x16_rounded==x15_rounded then
        disp("The root is "+string(x16_rounded)+"")
        abort
    end
    p1=x16_rounded
    p2=horner(y,[p1])
    p3=nthroot (p2,z_nthroot)
    p4=p3*1000
    p5=int(p4)
    x17_rounded=o5/1000
// x17 or seventeenth approximation
    disp("x17 or seventeenth approximation:  "+string(x17_rounded)+"")
    if x17_rounded==x16_rounded then
        disp("The root is "+string(x17_rounded)+"")
        abort
    end
    q1=x17_rounded
    q2=horner(y,[q1])
    q3=nthroot (q2,z_nthroot)
    q4=q3*1000
    q5=int(q4)
    x18_rounded=o5/1000
// x18 or eighteenth approximation
    disp("x18 or eighteenth approximation:  "+string(x18_rounded)+"")
    if x18_rounded==x17_rounded then
        disp("The root is "+string(x18_rounded)+"")
        abort
    end
    r1=x18_rounded
    r2=horner(y,[r1])
    r3=nthroot (r2,z_nthroot)
    r4=r3*1000
    r5=int(r4)
    x19_rounded=r5/1000
// x19 or nineteenth approximation
    disp("x19 or nineteenth approximation:  "+string(x19_rounded)+"")
    if x19_rounded==x18_rounded then
        disp("The root is "+string(x19_rounded)+"")
        abort
    end
    s1=x19_rounded
    s2=horner(y,[s1])
    s3=nthroot (s2,z_nthroot)
    s4=s3*1000
    s5=int(s4)
    x20_rounded=s5/1000
// x20 or twentieth approximation
    disp("x20 or twentieth approximation:  "+string(x20_rounded)+"")
    if x20_rounded==x19_rounded then
        disp("The root is "+string(x20_rounded)+"")
        abort
    end
    t1=x20_rounded
    t2=horner(y,[t1])
    t3=nthroot (t2,z_nthroot)
    t4=t3*1000
    t5=int(t4)
    x21_rounded=t5/1000
// x21 or twenty-first approximation
    disp("x21 or twenty-first approximation:  "+string(x21_rounded)+"")
    if x21_rounded==x20_rounded then
        disp("The root is "+string(x21_rounded)+"")
        abort
    end
    u1=x21_rounded    
    u2=horner(y,[u1])
    u3=nthroot (u2,z_nthroot)
    u4=u3*1000
    u5=int(u4)
    x22_rounded=u5/1000
// x22 or twenty-second approximation
    disp("x22 or twenty-second approximation:  "+string(x22_rounded)+"")
    if x22_rounded==x21_rounded then
        disp("The root is "+string(x22_rounded)+"")
        abort
    end
    v1=x22_rounded
    v2=horner(y,[v1])
    v3=nthroot (v2,z_nthroot)
    v4=v3*1000
    v5=int(v4)
    x23_rounded=v5/1000
// x23 or twenty-third approximation
    disp("x23 or twenty-third approximation:  "+string(x23_rounded)+"")
    if x23_rounded==x22_rounded then
        disp("The root is "+string(x23_rounded)+"")
        abort
    end
    w1=x23_rounded
    w2=horner(y,[w1])
    w3=nthroot (w2,z_nthroot)
    w4=w3*1000
    w5=int(w4)
    x24_rounded=w5/1000
// x24 or twenty-fourth approximation
    disp("x24 or twenty-fourth approximation:  "+string(x24_rounded)+"")
    if x24_rounded==x23_rounded then
        disp("The root is "+string(x24_rounded)+"")
        abort
    end
    x_x1=x24_rounded
    x_x1_2=horner(y,[x_x1])
    x_x1_3=nthroot (x_x1_2,z_nthroot)
    x_x1_4=x_x1_3*1000
    x_x1_5=int(x_x1_4)
    x24_rounded=x_x1_5/1000
// x25 or twenty-fifth approximation
    disp("x25 or twenty-fifth approximation:  "+string(x25_rounded)+"")
    if x25_rounded==x24_rounded then
        disp("The root is "+string(x25_rounded)+"")
        abort
    else
        disp("ERROR: Cannot approximate anymore! Exceeded the maximum capabilities of the program.")
        disp("Please wait for the next patch update of the current version!")
        abort
    end
end

