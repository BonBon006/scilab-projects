elseif ANSWER1==321 then
    y=input (" Input your f(x):  ")
    y_prime=input (" Input derivative of f(x):  ")
    x=input (" Input your x0:  ") // x=input = x(0) or initial approximation
    disp("x0 or initial approximation:  "+string(x)+"")
    disp("")
    y1=horner(y,[x])
    y2=y1*1000
    y3=int(y2)
    y_rounded=y3/1000 // y_rounded = f(x0)
    disp("f(x0):  "+string(y_rounded)+"")
    y1_prime=horner(y_prime,[x])
    y2_prime=y1_prime*1000
    y3_prime=int(y2_prime)
    y_prime_rounded=y3_prime/1000 // y_prime_rounded = f'(x0)
    disp("first derivative of f(x0):  "+string(y_prime_rounded)+"")
    disp("")
// x1 or first approximation
    x1=((x)-((y1_rounded)/(y1_prime_rounded)))
    x1_1=x1*1000
    x1_2=int(x1_1)
    x1_rounded=x1_2/1000
    disp("x1 or first approximation:  "+string(x1_rounded)+"")
    a1=horner(y,[x1_rounded])
    a2=a1*1000
    a3=int(a2)
    a_rounded=a3/1000 // a_rounded = f(x1)
    disp("f(x1):  "+string(a_rounded)+"")
    a1_prime=horner(y_prime,[x1_rounded])
    a2_prime=a1_prime*1000
    a3_prime=int(a2_prime)
    a_prime_rounded=a3_prime/1000 // a_prime_rounded = f'(x1)
    disp("first derivative of f(x1):  "+string(a_prime_rounded)+"")
    disp("")
// x2 or second approximation
    x2=((x1)-((a_rounded)/(a_prime_rounded)))
    x2_1=x2*1000
    x2_2=int(x2_1)
    x2_rounded=x2_2/1000
    disp("x2 or first approximation:  "+string(x2_rounded)+"")
    if x2_rounded==x1_rounded then
        disp("The root is "+string(x2_rounded)+"")
        abort
    end
    b1=horner(y,[x2_rounded])
    b2=b1*1000
    b3=int(b2)
    b_rounded=b3/1000 // b_rounded = f(x2)
    disp("f(x2):  "+string(b_rounded)+"")
    b1_prime=horner(y_prime,[x2_rounded])
    b2_prime=b1_prime*1000
    b3_prime=int(b2_prime)
    b_prime_rounded=b3_prime/1000 // b_prime_rounded = f'(x2)
    disp("first derivative of f(x2):  "+string(b_prime_rounded)+"")
    disp("")
// x3 or third approximation
    x3=((x2)-((b_rounded)/(b_prime_rounded)))
    x3_1=x3*1000
    x3_2=int(x3_1)
    x3_rounded=x3_2/1000
    disp("x3 or third approximation:  "+string(x3_rounded)+"")
    if x3_rounded==x2_rounded then
        disp("The root is "+string(x3_rounded)+"")
        abort
    elseif x3_rounded==x1_rounded then
        disp("The root is "+string(x3_rounded)+"")
        abort
    end
    c1=horner(y,[x3_rounded])
    c2=c1*1000
    c3=int(c2)
    c_rounded=c3/1000 // c_rounded = f(x3)
    disp("f(x3):  "+string(c_rounded)+"")
    c1_prime=horner(y_prime,[x3_rounded])
    c2_prime=c1_prime*1000
    c3_prime=int(c2_prime)
    c_prime_rounded=c3_prime/1000 // c_prime_rounded = f'(x3)
    disp("first derivative of f(x3):  "+string(c_prime_rounded)+"")
    disp("")
// x4 or fourth approximation
    x4=((x3)-((c_rounded)/(c_prime_rounded)))
    x4_1=x4*1000
    x4_2=int(x4_1)
    x4_rounded=x4_2/1000
    disp("x4 or fourth approximation:  "+string(x4_rounded)+"")
    if x4_rounded==x3_rounded then
        disp("The root is "+string(x4_rounded)+"")
        abort
    elseif x4_rounded==x2_rounded then
        disp("The root is "+string(x4_rounded)+"")
        abort
    end
    d1=horner(y,[x4_rounded])
    d2=d1*1000
    d3=int(d2)
    d_rounded=d3/1000 // d_rounded = f(x4)
    disp("f(x4):  "+string(d_rounded)+"")
    d1_prime=horner(y_prime,[x4_rounded])
    d2_prime=d1_prime*1000
    d3_prime=int(d2_prime)
    d_prime_rounded=d3_prime/1000 // d_prime_rounded = f'(x4)
    disp("first derivative of f(x4):  "+string(d_prime_rounded)+"")
    disp("")
// x5 or fifth approximation
    x5=((x4)-((d_rounded)/(d_prime_rounded)))
    x5_1=x5*1000
    x5_2=int(x5_1)
    x5_rounded=x5_2/1000 
    disp("x5 or fifth approximation:  "+string(x5_rounded)+"")
    if x5_rounded==x4_rounded then
        disp("The root is "+string(x5_rounded)+"")
        abort
    elseif x5_rounded==x3_rounded then
        disp("The root is "+string(x5_rounded)+"")
        abort
    end
    e1=horner(y,[x5_rounded])
    e2=e1*1000
    e3=int(e2)
    e_rounded=e3/1000 // e_rounded = f(x5)
    disp("f(x5):  "+string(e_rounded)+"")
    e1_prime=horner(y_prime,[x5_rounded])
    e2_prime=e1_prime*1000
    e3_prime=int(e2_prime)
    e_prime_rounded=e3_prime/1000 // e_prime_rounded = f'(x5)
    disp("first derivative of f(x5):  "+string(e_prime_rounded)+"")
    disp("")
// x6 or sixth approximation
    x6=((x5)-((e_rounded)/(e_prime_rounded)))
    x6_1=x6*1000
    x6_2=int(x6_1)
    x6_rounded=x6_2/1000 
    disp("x6 or sixth approximation:  "+string(x6_rounded)+"")
    if x6_rounded==x5_rounded then
        disp("The root is "+string(x6_rounded)+"")
        abort
    elseif x6_rounded==x4_rounded then
        disp("The root is "+string(x6_rounded)+"")
        abort
    end
    f1=horner(y,[x6_rounded])
    f2=f1*1000
    f3=int(f2)
    f_rounded=f3/1000 // f_rounded = f(x6)
    disp("f(x6):  "+string(f_rounded)+"")
    f1_prime=horner(y_prime,[x6_rounded])
    f2_prime=f1_prime*1000
    f3_prime=int(f2_prime)
    f_prime_rounded=f3_prime/1000 // f_prime_rounded = f'(x6)
    disp("first derivative of f(x6):  "+string(f_prime_rounded)+"")
    disp("")
// x7 or seventh approximation
    x7=((x6)-((f_rounded)/(f_prime_rounded)))
    x7_1=x7*1000
    x7_2=int(x7_1)
    x7_rounded=x7_2/1000 
    disp("x7 or seventh approximation:  "+string(x7_rounded)+"")
    if x7_rounded==x6_rounded then
        disp("The root is "+string(x7_rounded)+"")
        abort
    elseif x7_rounded==x5_rounded then
        disp("The root is "+string(x7_rounded)+"")
        abort
    end
    g1=horner(y,[x7_rounded])
    g2=g1*1000
    g3=int(g2)
    g_rounded=g3/1000 // g_rounded = f(x7)
    disp("f(x7):  "+string(g_rounded)+"")
    g1_prime=horner(y_prime,[x7_rounded])
    g2_prime=g1_prime*1000
    g3_prime=int(g2_prime)
    g_prime_rounded=g3_prime/1000 // g_prime_rounded = f'(x7)
    disp("first derivative of f(x7):  "+string(g_prime_rounded)+"")
    disp("")
// x8 or eighth approximation
    x8=((x7)-((g_rounded)/(g_prime_rounded)))
    x8_1=x8*1000
    x8_2=int(x8_1)
    x8_rounded=x8_2/1000 
    disp("x8 or eighth approximation:  "+string(x8_rounded)+"")
    if x8_rounded==x7_rounded then
        disp("The root is "+string(x8_rounded)+"")
        abort
    elseif x8_rounded==x6_rounded then
        disp("The root is "+string(x8_rounded)+"")
        abort
    end
    h1=horner(y,[x8_rounded])
    h2=h1*1000
    h3=int(h2)
    h_rounded=h3/1000 // h_rounded = f(x8)
    disp("f(x8):  "+string(h_rounded)+"")
    h1_prime=horner(y_prime,[x8_rounded])
    h2_prime=h1_prime*1000
    h3_prime=int(h2_prime)
    h_prime_rounded=h3_prime/1000 // h_prime_rounded = f'(x8)
    disp("first derivative of f(x8):  "+string(h_prime_rounded)+"")
    disp("")
// x9 or nineteenth approximation
    x9=((x8)-((h_rounded)/(h_prime_rounded)))
    x9_1=x9*1000
    x9_2=int(x9_1)
    x9_rounded=x9_2/1000 
    disp("x9 or nineteenth approximation:  "+string(x9_rounded)+"")
    if x9_rounded==x8_rounded then
        disp("The root is "+string(x9_rounded)+"")
        abort
    elseif x9_rounded==x7_rounded then
        disp("The root is "+string(x9_rounded)+"")
        abort
    end
    i1=horner(y,[x9_rounded])
    i2=i1*1000
    i3=int(i2)
    i_rounded=i3/1000 // i_rounded = f(x9)
    disp("f(x9):  "+string(i_rounded)+"")
    i1_prime=horner(y_prime,[x9_rounded])
    i2_prime=i1_prime*1000
    i3_prime=int(i2_prime)
    i_prime_rounded=i3_prime/1000 // i_prime_rounded = f'(x9)
    disp("first derivative of f(x9):  "+string(i_prime_rounded)+"")
    disp("")
// x10 or tenth approximation
    x10=((x9)-((i_rounded)/(i_prime_rounded)))
    x10_1=x10*1000
    x10_2=int(x10_1)
    x10_rounded=x10_2/1000 
    disp("x10 or tenth approximation:  "+string(x10_rounded)+"")
    if x10_rounded==x9_rounded then
        disp("The root is "+string(x10_rounded)+"")
        abort
    elseif x10_rounded==x8_rounded then
        disp("The root is "+string(x10_rounded)+"")
        abort
    end
    j1=horner(y,[x10_rounded])
    j2=j1*1000
    j3=int(j2)
    j_rounded=j3/1000 // j_rounded = f(x10)
    disp("f(x10):  "+string(j_rounded)+"")
    j1_prime=horner(y_prime,[x10_rounded])
    j2_prime=j1_prime*1000
    j3_prime=int(j2_prime)
    j_prime_rounded=j3_prime/1000 // j_prime_rounded = f'(x10)
    disp("first derivative of f(x10):  "+string(j_prime_rounded)+"")
    disp("")
// x11 or eleventh approximation
    x11=((x10)-((j_rounded)/(j_prime_rounded)))
    x11_1=x11*1000
    x11_2=int(x11_1)
    x11_rounded=x11_2/1000 
    disp("x11 or eleventh approximation:  "+string(x11_rounded)+"")
    if x11_rounded==x10_rounded then
        disp("The root is "+string(x11_rounded)+"")
        abort
    elseif x11_rounded==x9_rounded then
        disp("The root is "+string(x11_rounded)+"")
        abort
    end
    k1=horner(y,[x11_rounded])
    k2=k1*1000
    k3=int(k2)
    k_rounded=k3/1000 // k_rounded = f(x11)
    disp("f(x11):  "+string(k_rounded)+"")
    k1_prime=horner(y_prime,[x11_rounded])
    k2_prime=k1_prime*1000
    k3_prime=int(k2_prime)
    k_prime_rounded=k3_prime/1000 // k_prime_rounded = f'(x11)
    disp("first derivative of f(x11):  "+string(k_prime_rounded)+"")
    disp("")
// x12 or twelfth approximation
    x12=((x11)-((k_rounded)/(k_prime_rounded)))
    x12_1=x12*1000
    x12_2=int(x12_1)
    x12_rounded=x12_2/1000 
    disp("x12 or twelfth approximation:  "+string(x12_rounded)+"")
    if x12_rounded==x11_rounded then
        disp("The root is "+string(x12_rounded)+"")
        abort
    elseif x12_rounded==x10_rounded then
        disp("The root is "+string(x12_rounded)+"")
        abort
    end
    l1=horner(y,[x12_rounded])
    l2=l1*1000
    l3=int(l2)
    l_rounded=l3/1000 // l_rounded = f(x12)
    disp("f(x12):  "+string(l_rounded)+"")
    l1_prime=horner(y_prime,[x12_rounded])
    l2_prime=l1_prime*1000
    l3_prime=int(l2_prime)
    l_prime_rounded=l3_prime/1000 // l_prime_rounded = f'(x12)
    disp("first derivative of f(x12):  "+string(l_prime_rounded)+"")
    disp("")
// x13 or thirteenth approximation
    x13=((x12)-((l_rounded)/(l_prime_rounded)))
    x13_1=x13*1000
    x13_2=int(x13_1)
    x13_rounded=x13_2/1000 
    disp("x13 or thirteenth approximation:  "+string(x13_rounded)+"")
    if x13_rounded==x12_rounded then
        disp("The root is "+string(x13_rounded)+"")
        abort
    elseif x13_rounded==x11_rounded then
        disp("The root is "+string(x13_rounded)+"")
        abort
    end
    m1=horner(y,[x13_rounded])
    m2=m1*1000
    m3=int(m2)
    m_rounded=m3/1000 // m_rounded = f(x13)
    disp("f(x13):  "+string(m_rounded)+"")
    m1_prime=horner(y_prime,[x13_rounded])
    m2_prime=m1_prime*1000
    m3_prime=int(m2_prime)
    m_prime_rounded=m3_prime/1000 // m_prime_rounded = f'(x13)
    disp("first derivative of f(x13):  "+string(m_prime_rounded)+"")
    disp("")
// x14 or fourteenth approximation
    x14=((x13)-((m_rounded)/(m_prime_rounded)))
    x14_1=x14*1000
    x14_2=int(x14_1)
    x14_rounded=x14_2/1000 
    disp("x14 or fourteenth approximation:  "+string(x14_rounded)+"")
    if x14_rounded==x13_rounded then
        disp("The root is "+string(x14_rounded)+"")
        abort
    elseif x14_rounded==x12_rounded then
        disp("The root is "+string(x14_rounded)+"")
        abort
    end
    n1=horner(y,[x14_rounded])
    n2=n1*1000
    n3=int(n2)
    n_rounded=n3/1000 // n_rounded = f(x14)
    disp("f(x14):  "+string(n_rounded)+"")
    n1_prime=horner(y_prime,[x14_rounded])
    n2_prime=n1_prime*1000
    n3_prime=int(n2_prime)
    n_prime_rounded=n3_prime/1000 // n_prime_rounded = f'(x14)
    disp("first derivative of f(x14):  "+string(n_prime_rounded)+"")
    disp("")
// x15 or fifteenth approximation
    x15=((x14)-((n_rounded)/(n_prime_rounded)))
    x15_1=x15*1000
    x15_2=int(x15_1)
    x15_rounded=x15_2/1000 
    disp("x15 or fifteenth approximation:  "+string(x15_rounded)+"")
    if x15_rounded==x14_rounded then
        disp("The root is "+string(x15_rounded)+"")
        abort
    elseif x15_rounded==x13_rounded then
        disp("The root is "+string(x15_rounded)+"")
        abort
    end
    o1=horner(y,[x15_rounded])
    o2=o1*1000
    o3=int(o2)
    o_rounded=o3/1000 // o_rounded = f(x15)
    disp("f(x15):  "+string(o_rounded)+"")
    o1_prime=horner(y_prime,[x15_rounded])
    o2_prime=o1_prime*1000
    o3_prime=int(o2_prime)
    o_prime_rounded=o3_prime/1000 // o_prime_rounded = f'(x15)
    disp("first derivative of f(x15):  "+string(o_prime_rounded)+"")
    disp("")
// x16 or sixteenth approximation
    x16=((x15)-((o_rounded)/(o_prime_rounded)))
    x16_1=x16*1000
    x16_2=int(x16_1)
    x16_rounded=x16_2/1000 
    disp("x16 or sixteenth approximation:  "+string(x16_rounded)+"")
    if x16_rounded==x15_rounded then
        disp("The root is "+string(x16_rounded)+"")
        abort
    elseif x16_rounded==x14_rounded then
        disp("The root is "+string(x16_rounded)+"")
        abort
    end
    p1=horner(y,[x16_rounded])
    p2=p1*1000
    p3=int(p2)
    p_rounded=p3/1000 // p_rounded = f(x16)
    disp("f(x16):  "+string(p_rounded)+"")
    p1_prime=horner(y_prime,[x16_rounded])
    p2_prime=p1_prime*1000
    p3_prime=int(p2_prime)
    p_prime_rounded=p3_prime/1000 // p_prime_rounded = f'(x16)
    disp("first derivative of f(x16):  "+string(p_prime_rounded)+"")
    disp("")
// x17 or seventeenth approximation
    x17=((x16)-((p_rounded)/(p_prime_rounded)))
    x17_1=x17*1000
    x17_2=int(x17_1)
    x17_rounded=x17_2/1000 
    disp("x17 or seventeenth approximation:  "+string(x17_rounded)+"")
    if x17_rounded==x16_rounded then
        disp("The root is "+string(x17_rounded)+"")
        abort
    elseif x17_rounded==x15_rounded then
        disp("The root is "+string(x17_rounded)+"")
        abort
    end
    q1=horner(y,[x17_rounded])
    q2=q1*1000
    q3=int(q2)
    q_rounded=q3/1000 // q_rounded = f(x17)
    disp("f(x17):  "+string(q_rounded)+"")
    q1_prime=horner(y_prime,[x17_rounded])
    q2_prime=q1_prime*1000
    q3_prime=int(q2_prime)
    q_prime_rounded=q3_prime/1000 // q_prime_rounded = f'(x17)
    disp("first derivative of f(x17):  "+string(q_prime_rounded)+"")
    disp("")
// x18 or eighteenth approximation
    x18=((x17)-((q_rounded)/(q_prime_rounded)))
    x18_1=x18*1000
    x18_2=int(x18_1)
    x18_rounded=x18_2/1000 
    disp("x18 or eighteenth approximation:  "+string(x18_rounded)+"")
    if x18_rounded==x17_rounded then
        disp("The root is "+string(x18_rounded)+"")
        abort
    elseif x18_rounded==x16_rounded then
        disp("The root is "+string(x18_rounded)+"")
        abort
    end
    r1=horner(y,[x18_rounded])
    r2=r1*1000
    r3=int(r2)
    r_rounded=r3/1000 // r_rounded = f(x18)
    disp("f(x18):  "+string(r_rounded)+"")
    r1_prime=horner(y_prime,[x18_rounded])
    r2_prime=r1_prime*1000
    r3_prime=int(r2_prime)
    r_prime_rounded=r3_prime/1000 // r_prime_rounded = f'(x18)
    disp("first derivative of f(x18):  "+string(r_prime_rounded)+"")
    disp("")
// x19 or nineteenth approximation
    x19=((x18)-((r_rounded)/(r_prime_rounded)))
    x19_1=x19*1000
    x19_2=int(x19_1)
    x19_rounded=x19_2/1000 
    disp("x19 or nineteenth approximation:  "+string(x19_rounded)+"")
    if x19_rounded==x18_rounded then
        disp("The root is "+string(x19_rounded)+"")
        abort
    elseif x19_rounded==x17_rounded then
        disp("The root is "+string(x19_rounded)+"")
        abort
    end
    s1=horner(y,[x19_rounded])
    s2=s1*1000
    s3=int(s2)
    s_rounded=s3/1000 // s_rounded = f(x19)
    disp("f(x19):  "+string(s_rounded)+"")
    s1_prime=horner(y_prime,[x18_rounded])
    s2_prime=s1_prime*1000
    s3_prime=int(s2_prime)
    s_prime_rounded=s3_prime/1000 // s_prime_rounded = f'(x19)
    disp("first derivative of f(x19):  "+string(s_prime_rounded)+"")
    disp("")
// x20 or twentieth approximation
    x20=((x19)-((s_rounded)/(s_prime_rounded)))
    x20_1=x20*1000
    x20_2=int(x20_1)
    x20_rounded=x20_2/1000 
    disp("x20 or twentieth approximation:  "+string(x20_rounded)+"")
    if x20_rounded==x19_rounded then
        disp("The root is "+string(x20_rounded)+"")
        abort
    elseif x20_rounded==x18_rounded then
        disp("The root is "+string(x20_rounded)+"")
        abort
    else
        disp("ERROR: Cannot approximate anymore! Exceeded the maximum capabilities of the program.")
        disp("Please wait for the next patch update of the current version!")
        abort
    end
end
