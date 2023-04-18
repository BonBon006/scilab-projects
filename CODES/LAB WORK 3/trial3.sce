elseif ANSWER1==123 then
    clc
    disp("Mode: Secant Method")
    disp("")
    y=input (" Input your f(x):  ")
    x=input (" Input your x0:  ") // x=input = x(0) or initial approximation
    x1=input(" Input your x1:  ") // x1=input = x(1) or first approximation
// First Iteration
    x_1=horner(y,[x])
    x_2=x_1*1000
    x_3=int(x_2)
    y_rounded=x_3/1000
    x1_1=horner(y,[x1])
    x1_2=x1_1*1000
    x1_3=int(x1_2)
    y1_rounded=x1_3/1000
    disp("")
    disp("Iteration 1:")
    disp("x0 or initial approximation:  "+string(x)+"") // Xn-1
    disp("x1 or first approximation:  "+string(x1)+"") // Xn
    disp("f(x0):  "+string(y_rounded)+"") // f(Xn-1)
    disp("f(x1):  "+string(y1_rounded)+"") // f(Xn)
    disp("")
// Second Iteration
    x2=((x1)-(((y1_rounded)(x1-x))/((y1_rounded)-(y_rounded))))
    x2_1=x2*1000
    x2_2=int(x2_1)
    x2_rounded=x2_2/1000
    disp("x2 or second approximation:  "+string(x2_rounded)+"")
    if x2_rounded==x1 then
        disp("")
        disp("The root is "+string(x2_rounded)+"")
        abort
    end
    y2=horner(y,[x2_rounded])
    y2_1=y2*1000
    y2_2=int(y2_1)
    y2_rounded=y2_2/1000
    disp("")
    disp("Iteration 2:")
    disp("x1 or first approximation:  "+string(x1)+"") // Xn-1
    disp("x2 or second approximation:  "+string(x2_rounded)+"") // Xn
    disp("f(x1):  "+string(y1_rounded)+"") // f(Xn-1)
    disp("f(x2):  "+string(y2_rounded)+"") // f(Xn)
    disp("")
// Third Iteration
    x3=((x2_rounded)-(((y2_rounded)*(x2_rounded-x1))/((y2_rounded)-(y1_rounded))))
    x3_1=x3*1000
    x3_2=int(x3_1)
    x3_rounded=x3_2/1000
    disp("x3 or third approximation:  "+string(x3_rounded)+"")
    if x3_rounded==x2_rounded then
        disp("")
        disp("The root is "+string(x3_rounded)+"")
        abort
    elseif x3_rounded==x1 then
        disp("")
        disp("The root is "+string(x3_rounded)+"")
    end
    y3=horner(y,[x3_rounded])
    y3_1=y3*1000
    y3_2=int(y3_1)
    y3_rounded=y3_2/1000
    disp("")
    disp("Iteration 3:")
    disp("x2 or second approximation:  "+string(x2_rounded)+"") // Xn-1
    disp("x3 or third approximation:  "+string(x3_rounded)+"") // Xn
    disp("f(x2):  "+string(y2_rounded)+"") // f(Xn-1)
    disp("f(x3):  "+string(y3_rounded)+"") // f(Xn)
    disp("")
// Fourth Iteration
    x4=((x3_rounded)-(((y3_rounded)*(x3_rounded-x2_rounded))/((y3_rounded)-(y2_rounded))))
    x4_1=x4*1000
    x4_2=int(x4_1)
    x4_rounded=x4_2/1000
    disp("x4 or fourth approximation:  "+string(x4_rounded)+"")
    if x4_rounded==x3_rounded then
        disp("")
        disp("The root is "+string(x4_rounded)+"")
        abort
    elseif x4_rounded==x2_rounded then
        disp("")
        disp("The root is "+string(x4_rounded)+"")
    end
    y4=horner(y,[x4_rounded])
    y4_1=y4*1000
    y4_2=int(y4_1)
    y4_rounded=y4_2/1000
    disp("")
    disp("Iteration 4:")
    disp("x3 or third approximation:  "+string(x3_rounded)+"") // Xn-1
    disp("x4 or fourth approximation:  "+string(x4_rounded)+"") // Xn
    disp("f(x3):  "+string(y3_rounded)+"") // f(Xn-1)
    disp("f(x4):  "+string(y4_rounded)+"") // f(Xn)
    disp("")
// Fifth Iteration
    x5=((x4_rounded)-(((y4_rounded)*(x4_rounded-x3_rounded))/((y4_rounded)-(y3_rounded))))
    x5_1=x5*1000
    x5_2=int(x5_1)
    x5_rounded=x5_2/1000
    disp("x5 or fifth approximation:  "+string(x5_rounded)+"")
    if x5_rounded==x4_rounded then
        disp("")
        disp("The root is "+string(x5_rounded)+"")
        abort
    elseif x5_rounded==x3_rounded then
        disp("")
        disp("The root is "+string(x5_rounded)+"")
    end
    y5=horner(y,[x5_rounded])
    y5_1=y5*1000
    y5_2=int(y5_1)
    y5_rounded=y5_2/1000
    disp("")
    disp("Iteration 5:")
    disp("x4 or fourth approximation:  "+string(x4_rounded)+"") // Xn-1
    disp("x5 or fifth approximation:  "+string(x5_rounded)+"") // Xn
    disp("f(x4):  "+string(y4_rounded)+"") // f(Xn-1)
    disp("f(x5):  "+string(y5_rounded)+"") // f(Xn)
    disp("")
// Sixth Iteration
    x6=((x5_rounded)-(((y5_rounded)*(x5_rounded-x4_rounded))/((y5_rounded)-(y4_rounded))))
    x6_1=x6*1000
    x6_2=int(x6_1)
    x6_rounded=x6_2/1000
    disp("x6 or sixth approximation:  "+string(x6_rounded)+"")
    if x6_rounded==x5_rounded then
        disp("")
        disp("The root is "+string(x6_rounded)+"")
        abort
    elseif x5_rounded==x4_rounded then
        disp("")
        disp("The root is "+string(x6_rounded)+"")
    end
    y6=horner(y,[x6_rounded])
    y6_1=y6*1000
    y6_2=int(y6_1)
    y6_rounded=y6_2/1000
    disp("")
    disp("Iteration 6:")
    disp("x5 or fifth approximation:  "+string(x5_rounded)+"") // Xn-1
    disp("x6 or sixth approximation:  "+string(x6_rounded)+"") // Xn
    disp("f(x5):  "+string(y5_rounded)+"") // f(Xn-1)
    disp("f(x6):  "+string(y6_rounded)+"") // f(Xn)
    disp("")
// Seventh Iteration
    x7=((x6_rounded)-(((y6_rounded)*(x6_rounded-x5_rounded))/((y6_rounded)-(y5_rounded))))
    x7_1=x7*1000
    x7_2=int(x7_1)
    x7_rounded=x7_2/1000
    disp("x7 or seventh approximation:  "+string(x7_rounded)+"")
    if x7_rounded==x6_rounded then
        disp("")
        disp("The root is "+string(x7_rounded)+"")
        abort
    elseif x7_rounded==x5_rounded then
        disp("")
        disp("The root is "+string(x7_rounded)+"")
    end
    y7=horner(y,[x7_rounded])
    y7_1=y7*1000
    y7_2=int(y7_1)
    y7_rounded=y7_2/1000
    disp("")
    disp("Iteration 7:")
    disp("x6 or sixth approximation:  "+string(x6_rounded)+"") // Xn-1
    disp("x7 or seventh approximation:  "+string(x7_rounded)+"") // Xn
    disp("f(x6):  "+string(y6_rounded)+"") // f(Xn-1)
    disp("f(x7):  "+string(y7_rounded)+"") // f(Xn)
    disp("")
// Eighth Iteration
    x8=((x7_rounded)-(((y7_rounded)*(x7_rounded-x6_rounded))/((y7_rounded)-(y6_rounded))))
    x8_1=x8*1000
    x8_2=int(x8_1)
    x8_rounded=x8_2/1000
    disp("x8 or eighth approximation:  "+string(x8_rounded)+"")
    if x8_rounded==x7_rounded then
        disp("")
        disp("The root is "+string(x8_rounded)+"")
        abort
    elseif x8_rounded==x6_rounded then
        disp("")
        disp("The root is "+string(x8_rounded)+"")
    end
    y8=horner(y,[x8_rounded])
    y8_1=y8*1000
    y8_2=int(y8_1)
    y8_rounded=y8_2/1000
    disp("")
    disp("Iteration 8:")
    disp("x7 or seventh approximation:  "+string(x7_rounded)+"") // Xn-1
    disp("x8 or eighth approximation:  "+string(x8_rounded)+"") // Xn
    disp("f(x7):  "+string(y7_rounded)+"") // f(Xn-1)
    disp("f(x8):  "+string(y8_rounded)+"") // f(Xn)
    disp("")
// Ninth Iteration
    x9=((x8_rounded)-(((y8_rounded)*(x8_rounded-x7_rounded))/((y8_rounded)-(y7_rounded))))
    x9_1=x9*1000
    x9_2=int(x9_1)
    x9_rounded=x9_2/1000
    disp("x9 or ninth approximation:  "+string(x9_rounded)+"")
    if x9_rounded==x8_rounded then
        disp("")
        disp("The root is "+string(x9_rounded)+"")
        abort
    elseif x9_rounded==x7_rounded then
        disp("")
        disp("The root is "+string(x9_rounded)+"")
    end
    y9=horner(y,[x9_rounded])
    y9_1=y9*1000
    y9_2=int(y9_1)
    y9_rounded=y9_2/1000
    disp("")
    disp("Iteration 9:")
    disp("x8 or eighth approximation:  "+string(x8_rounded)+"") // Xn-1
    disp("x9 or ninth approximation:  "+string(x9_rounded)+"") // Xn
    disp("f(x8):  "+string(y8_rounded)+"") // f(Xn-1)
    disp("f(x9):  "+string(y9_rounded)+"") // f(Xn)
    disp("")
// Tenth Iteration
    x10=((x9_rounded)-(((y9_rounded)*(x9_rounded-x8_rounded))/((y9_rounded)-(y8_rounded))))
    x10_1=x10*1000
    x10_2=int(x10_1) 
    x10_rounded=x10_2/1000
    disp("x10 or tenth approximation:  "+string(x10_rounded)+"")
    if x10_rounded==x9_rounded then
        disp("")
        disp("The root is "+string(x10_rounded)+"")
        abort
    elseif x10_rounded==x8_rounded then
        disp("")
        disp("The root is "+string(x10_rounded)+"")
    end
    y10=horner(y,[x10_rounded])
    y10_1=y10*1000
    y10_2=int(y10_1)
    y10_rounded=y10_2/1000
    disp("")
    disp("Iteration 10:")
    disp("x9 or ninth approximation:  "+string(x9_rounded)+"") // Xn-1
    disp("x10 or tenth approximation:  "+string(x10_rounded)+"") // Xn
    disp("f(x9):  "+string(y9_rounded)+"") // f(Xn-1)
    disp("f(x10):  "+string(y10_rounded)+"") // f(Xn)
    disp("")
// Eleventh Iteration
    x11=((x10_rounded)-(((y10_rounded)*(x10_rounded-x9_rounded))/((y10_rounded)-(y9_rounded))))
    x11_1=x11*1000
    x11_2=int(x11_1) 
    x11_rounded=x11_2/1000
    disp("x11 or eleventh approximation:  "+string(x11_rounded)+"")
    if x11_rounded==x10_rounded then
        disp("")
        disp("The root is "+string(x11_rounded)+"")
        abort
    elseif x11_rounded==x9_rounded then
        disp("")
        disp("The root is "+string(x11_rounded)+"")
    end
    y11=horner(y,[x11_rounded])
    y11_1=y11*1000
    y11_2=int(y11_1)
    y11_rounded=y11_2/1000
    disp("")
    disp("Iteration 11:")
    disp("x10 or tenth approximation:  "+string(x10_rounded)+"") // Xn-1
    disp("x11 or eleventh approximation:  "+string(x11_rounded)+"") // Xn
    disp("f(x10):  "+string(y10_rounded)+"") // f(Xn-1)
    disp("f(x11):  "+string(y11_rounded)+"") // f(Xn)
    disp("")
// Twelfth Iteration
    x12=((x11_rounded)-(((y11_rounded)*(x11_rounded-x10_rounded))/((y11_rounded)-(y10_rounded))))
    x12_1=x12*1000
    x12_2=int(x12_1) 
    x12_rounded=x12_2/1000
    disp("x12 or twelfth approximation:  "+string(x12_rounded)+"")
    if x12_rounded==x11_rounded then
        disp("")
        disp("The root is "+string(x12_rounded)+"")
        abort
    elseif x12_rounded==x10_rounded then
        disp("")
        disp("The root is "+string(x12_rounded)+"")
    end
    y12=horner(y,[x12_rounded])
    y12_1=y12*1000
    y12_2=int(y12_1)
    y12_rounded=y12_2/1000
    disp("")
    disp("Iteration 12:")
    disp("x11 or eleventh approximation:  "+string(x11_rounded)+"") // Xn-1
    disp("x12 or twelfth approximation:  "+string(x12_rounded)+"") // Xn
    disp("f(x11):  "+string(y11_rounded)+"") // f(Xn-1)
    disp("f(x12):  "+string(y12_rounded)+"") // f(Xn)
    disp("")
// Thirteenth Iteration
    x13=((x12_rounded)-(((y12_rounded)*(x12_rounded-x11_rounded))/((y12_rounded)-(y11_rounded))))
    x13_1=x13*1000
    x13_2=int(x13_1) 
    x13_rounded=x13_2/1000
    disp("x13 or thirteenth approximation:  "+string(x13_rounded)+"")
    if x13_rounded==x12_rounded then
        disp("")
        disp("The root is "+string(x13_rounded)+"")
        abort
    elseif x13_rounded==x11_rounded then
        disp("")
        disp("The root is "+string(x13_rounded)+"")
    end
    y13=horner(y,[x13_rounded])
    y13_1=y13*1000
    y13_2=int(y13_1)
    y13_rounded=y13_2/1000
    disp("")
    disp("Iteration 13:")
    disp("x12 or twelfth approximation:  "+string(x12_rounded)+"") // Xn-1
    disp("x13 or thirteenth approximation:  "+string(x13_rounded)+"") // Xn
    disp("f(x12):  "+string(y12_rounded)+"") // f(Xn-1)
    disp("f(x13):  "+string(y13_rounded)+"") // f(Xn)
    disp("")
// Fourteenth Iteration
    x14=((x13_rounded)-(((y13_rounded)*(x13_rounded-x12_rounded))/((y13_rounded)-(y12_rounded))))
    x14_1=x14*1000
    x14_2=int(x14_1) 
    x14_rounded=x14_2/1000
    disp("x14 or fourteenth approximation:  "+string(x14_rounded)+"")
    if x14_rounded==x13_rounded then
        disp("")
        disp("The root is "+string(x14_rounded)+"")
        abort
    elseif x14_rounded==x12_rounded then
        disp("")
        disp("The root is "+string(x14_rounded)+"")
    end
    y14=horner(y,[x14_rounded])
    y14_1=y14*1000
    y14_2=int(y14_1)
    y14_rounded=y14_2/1000
    disp("")
    disp("Iteration 14:")
    disp("x13 or thirteenth approximation:  "+string(x13_rounded)+"") // Xn-1
    disp("x14 or fourteenth approximation:  "+string(x14_rounded)+"") // Xn
    disp("f(x13):  "+string(y13_rounded)+"") // f(Xn-1)
    disp("f(x14):  "+string(y14_rounded)+"") // f(Xn)
    disp("")
// Fifteenth Iteration
    x15=((x14_rounded)-(((y14_rounded)*(x14_rounded-x13_rounded))/((y14_rounded)-(y13_rounded))))
    x15_1=x15*1000
    x15_2=int(x15_1) 
    x15_rounded=x15_2/1000
    disp("x15 or fifteenth approximation:  "+string(x15_rounded)+"")
    if x15_rounded==x14_rounded then
        disp("")
        disp("The root is "+string(x15_rounded)+"")
        abort
    elseif x15_rounded==x13_rounded then
        disp("")
        disp("The root is "+string(x15_rounded)+"")
    end
    y15=horner(y,[x15_rounded])
    y15_1=y15*1000
    y15_2=int(y15_1)
    y15_rounded=y15_2/1000
    disp("")
    disp("Iteration 15:")
    disp("x14 or fourteenth approximation:  "+string(x14_rounded)+"") // Xn-1
    disp("x15 or fifteenth approximation:  "+string(x15_rounded)+"") // Xn
    disp("f(x14):  "+string(y14_rounded)+"") // f(Xn-1)
    disp("f(x15):  "+string(y15_rounded)+"") // f(Xn)
    disp("")
// Sixteenth Iteration
    x16=((x15_rounded)-(((y15_rounded)*(x15_rounded-x14_rounded))/((y15_rounded)-(y14_rounded))))
    x16_1=x16*1000
    x16_2=int(x16_1) 
    x16_rounded=x16_2/1000
    disp("x16 or sixteenth approximation:  "+string(x16_rounded)+"")
    if x16_rounded==x15_rounded then
        disp("")
        disp("The root is "+string(x16_rounded)+"")
        abort
    elseif x16_rounded==x14_rounded then
        disp("")
        disp("The root is "+string(x16_rounded)+"")
    end
    y16=horner(y,[x16_rounded])
    y16_1=y16*1000
    y16_2=int(y16_1)
    y16_rounded=y16_2/1000
    disp("")
    disp("Iteration 16:")
    disp("x15 or fifteenth approximation:  "+string(x15_rounded)+"") // Xn-1
    disp("x16 or sixteenth approximation:  "+string(x16_rounded)+"") // Xn
    disp("f(x15):  "+string(y15_rounded)+"") // f(Xn-1)
    disp("f(x16):  "+string(y16_rounded)+"") // f(Xn)
    disp("")
// Seventh Iteration
    x17=((x16_rounded)-(((y16_rounded)*(x16_rounded-x15_rounded))/((y16_rounded)-(y15_rounded))))
    x17_1=x17*1000
    x17_2=int(x17_1) 
    x17_rounded=x17_2/1000
    disp("x17 or seventeenth approximation:  "+string(x17_rounded)+"")
    if x17_rounded==x16_rounded then
        disp("")
        disp("The root is "+string(x17_rounded)+"")
        abort
    elseif x17_rounded==x15_rounded then
        disp("")
        disp("The root is "+string(x17_rounded)+"")
    end
    y17=horner(y,[x17_rounded])
    y17_1=y17*1000
    y17_2=int(y17_1)
    y17_rounded=y17_2/1000
    disp("")
    disp("Iteration 17:")
    disp("x16 or sixteenth approximation:  "+string(x16_rounded)+"") // Xn-1
    disp("x17 or seventeenth approximation:  "+string(x17_rounded)+"") // Xn
    disp("f(x16):  "+string(y16_rounded)+"") // f(Xn-1)
    disp("f(x17):  "+string(y17_rounded)+"") // f(Xn)
    disp("")
// Eighteenth Iteration
    x18=((x17_rounded)-(((y17_rounded)*(x17_rounded-x16_rounded))/((y17_rounded)-(y16_rounded))))
    x18_1=x18*1000
    x18_2=int(x18_1) 
    x18_rounded=x18_2/1000
    disp("x18 or eighteenth approximation:  "+string(x18_rounded)+"")
    if x18_rounded==x17_rounded then
        disp("")
        disp("The root is "+string(x18_rounded)+"")
        abort
    elseif x18_rounded==x16_rounded then
        disp("")
        disp("The root is "+string(x18_rounded)+"")
    end
    y18=horner(y,[x18_rounded])
    y18_1=y18*1000
    y18_2=int(y18_1)
    y18_rounded=y18_2/1000
    disp("")
    disp("Iteration 18:")
    disp("x17 or seventeenth approximation:  "+string(x17_rounded)+"") // Xn-1
    disp("x18 or eighteenth approximation:  "+string(x18_rounded)+"") // Xn
    disp("f(x17):  "+string(y17_rounded)+"") // f(Xn-1)
    disp("f(x18):  "+string(y18_rounded)+"") // f(Xn)
    disp("")
// Nineteenth Iteration
    x19=((x18_rounded)-(((y18_rounded)*(x18_rounded-x17_rounded))/((y18_rounded)-(y17_rounded))))
    x19_1=x19*1000
    x19_2=int(x19_1) 
    x19_rounded=x19_2/1000
    disp("x19 or nineteenth approximation:  "+string(x19_rounded)+"")
    if x19_rounded==x18_rounded then
        disp("")
        disp("The root is "+string(x19_rounded)+"")
        abort
    elseif x19_rounded==x17_rounded then
        disp("")
        disp("The root is "+string(x19_rounded)+"")
    end
    y19=horner(y,[x19_rounded])
    y19_1=y19*1000
    y19_2=int(y19_1)
    y19_rounded=y19_2/1000
    disp("")
    disp("Iteration 19:")
    disp("x18 or eighteenth approximation:  "+string(x18_rounded)+"") // Xn-1
    disp("x19 or nineteenth approximation:  "+string(x19_rounded)+"") // Xn
    disp("f(x18):  "+string(y18_rounded)+"") // f(Xn-1)
    disp("f(x19):  "+string(y19_rounded)+"") // f(Xn)
    disp("")
// Twentieth Iteration
    x20=((x19_rounded)-(((y19_rounded)*(x19_rounded-x18_rounded))/((y19_rounded)-(y18_rounded))))
    x20_1=x20*1000
    x20_2=int(x20_1) 
    x20_rounded=x20_2/1000
    disp("x20 or twentieth approximation:  "+string(x20_rounded)+"")
    if x20_rounded==x19_rounded then
        disp("")
        disp("The root is "+string(x20_rounded)+"")
        abort
    elseif x20_rounded==x18_rounded then
        disp("")
        disp("The root is "+string(x20_rounded)+"")
    else
        disp("ERROR: Cannot approximate anymore! Exceeded the maximum capabilities of the program.")
        disp("Please wait for the next patch update of the current version!")
        abort
    end
