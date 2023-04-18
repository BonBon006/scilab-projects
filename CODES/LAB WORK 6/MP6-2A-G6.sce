clear
yes=1
Yes=1
YES=1
no=0
No=0
NO=0
a=111
A=111
b=222
B=222
c=333
C=333
d=444
D=444
clock1=1
while clock1>0
    clc 
    disp("Welcome to Group 6 Interpolation Tech 1.0.1! ")
    mprintf("\n")
    disp("Program Mode Selection:")
    mprintf("\n")
    disp("a.) Lagrange Polynomial Interpolation")
    disp("b.) Newton Divided Difference")
    mprintf("\n")
    mprintf("\n")
    mprintf("\n")
    ANSWER1=input (" Choose desired program mode:  ")
    while clock1>0
        if ANSWER1==111 then
            clc
            disp("Program Mode: Lagrange Polynomial Interpolation")
            disp("Type of Lagrange Polynomial Interpolation:  ")
            mprintf("\n")
            disp("a.) Linear Interpolation")
            disp("b.) Quadratic Interpolation")
            mprintf("\n")
            mprintf("\n")
            mprintf("\n")
            ANSWER2=input (" Choose desired program type:  ")
            if ANSWER2==111 then
                while clock1>0
                    clc
                    disp("Program Mode: Lagrange Polynomial Interpolation")
                    disp("Program Type: Linear Interpolation")
                    mprintf("\n")
                    disp("Please input the following:")
                    mprintf("\n")
                    mprintf("\n")
                    while clock1>0
                    disp("Note: Xi matrix should be: [x0 x1]")
                    mprintf("\n")
                    x=input (" Xi matrix:  ") // xi
                    x_size=length(x)
                        if x_size~=2 then
                            mprintf("\n")
                            disp("Note: Matrix should be 1x2.")
                            mprintf("\n")
                            continue
                        elseif x_size==2 then
                            x=resize_matrix(x, -1, length(x)+1)
                            break
                        end
                    end
                    mprintf("\n")
                    disp("Options:")
                    disp("a.) Input your own polynomial function (Program will solve for f(xi) values)")
                    disp("b.) Input your own f(xi) values (Matrix format)")
                    mprintf("\n")
                    mprintf("\n")
                    ANSWER3=input (" Choose desired action:  ")
                    if ANSWER3==111 then
                        mprintf("\n")
                        z=input (" The unkown X value:  ") // x
                        x($)=z
                        y=input (" Polynomial function:  ")
                    elseif ANSWER3==222 then
                        while clock1>0
                            disp("Note: f(xi) matrix should be: [f(x0) f(x1)]")
                            mprintf("\n")
                            y=input (" f(Xi) matrix:  ")
                            y_size=length(y)
                            if y_size~=2 then
                                mprintf("\n")
                                disp("Note: Matrix should be 1x2.")
                                mprintf("\n")
                                continue
                            elseif y_size==2 then
                                y=resize_matrix(y, -1, length(x))
                                mprintf("\n")
                                z=input (" The unkown X value:  ") // x
                                x($)=z
                                break
                            end
                        end
                    end
                    x0=x(1)
                    x1=x(2)
                    y0=y(1)
                    y1=y(2)
                    yz=y(3)

                    yz=yz*10000
                    yz=round(yz)
                    yz=yz/10000 // f(x)

                    y0=y0*10000
                    y0=round(y0)
                    y0=y0/10000 // f(x0) rounded

                    y1=y1*10000
                    y1=round(y1)
                    y1=y1/10000 // f(x1) rounded

                    L0=(z-x1)/(x0-x1)
                    L1=(z-x0)/(x1-x0)

                    L0=L0*10000
                    L0=round(L0)
                    L0=L0/10000 // L0 rounded 

                    L1=L1*10000
                    L1=round(L1)
                    L1=L1/10000 // L1 rounded

                    P1=(L0*y0)+(L1*y1)
                    P1=P1*10000
                    P1=round(P1)
                    P1=P1/10000 // P1(x) rounded

                    P1_absolute=abs(P1)
                    yz_absolute=abs(yz)
                    E1=yz_absolute-P1_absolute
                    E1=E1*10000
                    E1=round(E1)
                    E1=E1/10000
                    E1=abs(E1)
                    
                    X=[x0 x1]
                    Y=[y0 y1]
                    i=0:1
                    
                    mprintf("\n")
                    mprintf("\n Data Table \n")
                    mprintf("\n i\txi\t\tf(xi)")
                    for s1=1:length(X)
                        mprintf("\n %.0f\t%.4f\t\t%.4f", i(s1), X(s1), Y(s1))
                    end
                    mprintf("\n\n\n\n Results Table\n")
                    if ANSWER3==111 then
                        mprintf("\n L0\t\tL1\t\tf(x)\t\tP1(x)\t\tError")
                        mprintf("\n %.4f\t\t%.4f\t\t%.4f\t\t%.4f\t\t%.4f\n", L0, L1, yz, P1, E1)
                    elseif ANSWER3==222 then
                        mprintf("\n L0\t\tL1\t\tP1(x)")
                        mprintf("\n %.4f\t\t%.4f\t\t%.4f\n", L0, L1, P1)
                    end
                    mprintf("\n")
                    mprintf("\n")
                    disp("Options:")
                    disp("a.) Reinput values")
                    disp("b.) Go back to program mode selection")
                    disp("c.) Choose another type of polynomial interpolation")
                    disp("d.) Exit program")
                    mprintf("\n")
                    mprintf("\n")
                    ANSWER3=input (" Choose desired action:  ")
                    if ANSWER3==111 then
                        continue
                    elseif ANSWER3==222 then
                        selec_page=1
                        break
                    elseif ANSWER3==333 then
                        selec_page=0
                        break
                    elseif ANSWER3==444 then
                        clc
                        disp("Thank you for using our program!")
                        disp("For any inquiries, contact Head Developer through this enail:")
                        disp("bernardoraevon@gmail.com")
                        abort
                    end
                end
            elseif ANSWER2==222 then
                while clock1>0
                    clc
                    disp("Program Mode: Lagrange Polynomial Interpolation")
                    disp("Program Type: Quadratic Interpolation")
                    mprintf("\n")
                    disp("Please input the following:")
                    mprintf("\n")
                    mprintf("\n")
                    while clock1>0
                    disp("Note: Xi matrix should be: [x0 x1 x3]")
                    mprintf("\n")
                    x=input (" Xi matrix:  ") // xi
                    x_size=length(x)
                        if x_size~=3 then
                            mprintf("\n")
                            disp("Note: Matrix should be 1x3.")
                            mprintf("\n")
                            continue
                        elseif x_size==3 then
                            x=resize_matrix(x, -1, length(x)+1)
                            break
                        end
                    end
                    mprintf("\n")
                    disp("Options:")
                    disp("a.) Input your own polynomial function (Program will solve for f(xi) values)")
                    disp("b.) Input your own f(xi) values (Matrix format)")
                    mprintf("\n")
                    mprintf("\n")
                    ANSWER3=input (" Choose desired action:  ")
                    if ANSWER3==111 then
                        mprintf("\n")
                        z=input (" The unkown X value:  ") // x
                        x($)=z
                        y=input (" Polynomial function:  ")
                    elseif ANSWER3==222 then
                        while clock1>0
                            disp("Note: f(xi) matrix should be: [f(x0) f(x1) f(x2)]")
                            mprintf("\n")
                            y=input (" f(Xi) matrix:  ")
                            y_size=length(y)
                            if y_size~=3 then
                                mprintf("\n")
                                disp("Note: Matrix should be 1x3.")
                                mprintf("\n")
                                continue
                            elseif y_size==3 then
                                y=resize_matrix(y, -1, length(x))
                                mprintf("\n")
                                z=input (" The unkown X value:  ") // x
                                x($)=z
                                break
                            end
                        end
                    end
                    
                    x0=x(1)
                    x1=x(2)
                    x2=x(3)
                    y0=y(1)
                    y1=y(2)
                    y2=y(3)
                    yz=y(4)

                    yz=yz*10000
                    yz=round(yz)
                    yz=yz/10000 // f(x)

                    y0=y0*10000
                    y0=round(y0)
                    y0=y0/10000 // f(x0) rounded

                    y1=y1*10000
                    y1=round(y1)
                    y1=y1/10000 // f(x1) rounded
                    
                    y2=y2*10000
                    y2=round(y2)
                    y2=y2/10000 // f(x2) rounded

                    L0=((z-x1)*(z-x2))/((x0-x1)*(x0-x2))
                    L1=((z-x0)*(z-x2))/((x1-x0)*(x1-x2))
                    L2=((z-x0)*(z-x1))/((x2-x0)*(x2-x1))

                    L0=L0*10000
                    L0=round(L0)
                    L0=L0/10000 // L0 rounded 

                    L1=L1*10000
                    L1=round(L1)
                    L1=L1/10000 // L1 rounded
                    
                    L2=L2*10000
                    L2=round(L2)
                    L2=L2/10000

                    P2=(L0*y0)+(L1*y1)+(L2*y2)
                    P2=P2*10000
                    P2=round(P2)
                    P2=P2/10000 // P2(x) rounded

                    P2_absolute=abs(P2)
                    yz_absolute=abs(yz)
                    E1=yz_absolute-P2_absolute
                    E1=E1*10000
                    E1=round(E1)
                    E1=E1/10000
                    E1=abs(E1)
                    
                    X=[x0 x1 x2]
                    Y=[y0 y1 y2]
                    i=0:2
                    
                    mprintf("\n")
                    mprintf("\n Data Table \n")
                    mprintf("\n i\txi\t\tf(xi)")
                    for s1=1:length(X)
                        mprintf("\n %.0f\t%.4f\t\t%.4f", i(s1), X(s1), Y(s1))
                    end
                    mprintf("\n\n\n\n Results Table\n")
                    if ANSWER3==111 then
                        mprintf("\n L0\t\tL1\t\tL2\t\tf(x)\t\tP2(x)\t\tError")
                        mprintf("\n %.4f\t\t%.4f\t\t%.4f\t\t%.4f\t\t%.4f\t\t%.4f\n", L0, L1, L2, yz, P2, E1)
                    elseif ANSWER3==222 then
                        mprintf("\n L0\t\tL1\t\tL2\t\tP2(x)")
                        mprintf("\n %.4f\t\t%.4f\t\t%.4f\t\t%.4f\n", L0, L1, L2, P2)
                    end
                    mprintf("\n")
                    mprintf("\n")
                    disp("Options:")
                    disp("a.) Reinput values")
                    disp("b.) Go back to program mode selection")
                    disp("c.) Choose another type of polynomial interpolation")
                    disp("d.) Exit program")
                    mprintf("\n")
                    mprintf("\n")
                    ANSWER3=input (" Choose desired action:  ")
                    if ANSWER3==111 then
                        continue
                    elseif ANSWER3==222 then
                        selec_page=1
                        break
                    elseif ANSWER3==333 then
                        selec_page=0
                        break
                    elseif ANSWER3==444 then
                        clc
                        disp("Thank you for using our program!")
                        disp("For any inquiries, contact Head Developer through this enail:")
                        disp("bernardoraevon@gmail.com")
                        abort
                    end
                end
            if selec_page==1 then
                break
            end
            end
        elseif ANSWER1==222 then
            while clock1>0
                clc
                disp("Program Mode: Newton Divided Difference")
                mprintf("\n")
                mprintf("\n")
                disp("Please input the following:")
                disp("Note: Xi matrix should be: [x0 x1 x2 --> xn]")
                mprintf("\n")
                mprintf("\n")
                x=input (" Xi matrix:  ")
                x_size=length(x)
                mprintf("\n")
                disp("Options:")
                disp("a.) Input your own polynomial function (Program will solve for f(xi) values)")
                disp("b.) Input your own f(xi) values (Matrix format)")
                mprintf("\n")
                mprintf("\n")
                ANSWER2=input (" Choose desired action:  ")
                if ANSWER2==111 then
                    mprintf("\n")
                    z=input (" The unkown X value:  ")
                    x=x'
                    x=resize_matrix(x,(length(x)+1), -1)
                    x($)=z
                    mprintf("\n")
                    y=input (" Polynomial function:  ")
                elseif ANSWER2==222 then
                    while clock1>0
                        mprintf("\n")
                        y=input (" f(Xi) matrix:  ")
                        y_size=length(y)
                        if y_size==x_size then
                            x=x'
                            x=resize_matrix(x,(length(x)+1), -1)
                            mprintf("\n")
                            z=input (" The unkown X value:  ")
                            x($)=z
                            y=y'
                            y=resize_matrix(y, length(x),-1)
                            break
                        elseif y_size~=x_size then
                            disp("Note: f(x) matrix length should be equal to Xi matrix length.")
                            mprintf("\n")
                            continue
                        end
                    end
                end
                
                y=y*10000
                y=round(y)
                y=y/10000
                risen=ones(length(x),((length(x)-1)*2))
                risen(:,1)=x
                risen(:,2)=y
                g1=(length(x)-2)*2
                g2=3
                g3=length(x)-2
                g4=0
                g5=length(x) // fixed
                g6=length(x)-2 // fixed
                g7=length(x)
                g8=2
                while g3<g1
                    for i1=1:(g6-g4)
                        y(i1)=((risen(1+i1,g2-1))-(risen(i1,g2-1)))/((risen(((1+i1)+(g2-3)),1))-((risen(i1,1))))
                        y(i1)=y(i1)*10000
                        y(i1)=round(y(i1))
                        y(i1)=y(i1)/10000
                        risen(i1,g2)=y(i1)
                        e(i1)=((risen(length(x),1))-(risen(g4+1,1)))
                        e(i1)=e(i1)*10000
                        e(i1)=round(e(i1))
                        e(i1)=e(i1)/10000
                        risen(g8+(i1-1),g7+1)=e(i1)
                    end
                    g2=g2+1
                    g3=g3+1
                    g4=g4+1
                    g7=g7+1
                    g8=g8+1
                end
                v1=risen(1,2:(2+g6))
                v1=v1'
                v2=risen(1:(g5-1),(g5+1):g5+g6)
                V=ones(g5-1,g5-1)
                V(:,1)=v1
                V(:,2:g5-1)=v2
                sendat=ones(g5-1,1)
                for i2=1:(g5-1)
                    K=prod(V(i2,:))
                    K=K*10000
                    K=round(K)
                    K=K/10000
                    sendat(i2,1)=K
                end
                saob=sum(sendat)
                saob=saob*10000
                saob=round(saob)
                saob=saob/10000
                
                X1=x
                Y1=y
                Y2=y
                X1=resize_matrix(X1, g5-1, -1)
                Y1=resize_matrix(Y1, g5-1, -1)
                gbuo=Y2($)
                gbuo_absolute=abs(gbuo)
                saob_absolute=abs(saob)
                Error=gbuo_absolute-saob_absolute
                Ej=abs(Error)
                
                i=0:g6
                
                mprintf("\n")
                mprintf("\n Data Table \n")
                mprintf("\n i\txi\t\tf(xi)")
                for s1=1:(length(x)-1)
                    mprintf("\n %.0f\t%.4f\t\t%.4f", i(s1), X1(s1), Y1(s1))
                end
                mprintf("\n")
                mprintf("\n Results Table \n")
                if ANSWER2==111 then
                    mprintf("\n x\t\tf(x)\t\tf(x)calculated\t\tError")
                    mprintf("\n %.4f\t\t%.4f\t\t%.4f\t\t\t%.4f", z, gbuo, saob, Ej)
                elseif ANSWER2==222 then
                    mprintf("\n x\t\tf(x)calculated")
                    mprintf("\n %.4f\t\t%.4f", z, saob)
                end
                mprintf("\n")
                mprintf("\n")
                mprintf("\n")
                disp("Options:")
                disp("a.) Reinput values")
                disp("b.) Go back to program mode selection")
                disp("c.) Exit program")
                mprintf("\n")
                mprintf("\n")
                ANSWER3=input (" Choose desired action:  ")
                if ANSWER3==111 then
                    selec_page=0
                    continue
                elseif ANSWER3==222 then
                    selec_page=1
                    break
                elseif ANSWER3==333 then
                    clc
                    disp("Thank you for using our program!")
                    disp("For any inquiries, contact Head Developer through this enail:")
                    disp("bernardoraevon@gmail.com")
                    abort
                end
            end
        end
    if selec_page==1 then
        break
    end
    end
end
