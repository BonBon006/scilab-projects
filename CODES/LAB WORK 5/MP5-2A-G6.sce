clc
clf

yes=1
Yes=1
YES=1
no=0
No=0
NO=0
a=123
A=123
b=231
B=231
c=321
C=321
selec_page=123
selec_log_page=123
clock1=100000
while clock1>0
    clc
    clf
    disp("Welcome to Group 6 Curve Fitter Program 1.0.1! ")
    mprintf("\n")
    disp("Program Mode Selection:")
    mprintf("\n")
    disp("a.) Linear Regression")
    disp("b.) Nonlinear Regression")
    mprintf("\n")
    mprintf("\n")
    ANSWER1=input (" Please choose your desired program mode:  ")
    if ANSWER1==123 then
        clc
        clf
        disp("Program Mode: Linear Regression")
        mprintf("\n")
        mprintf("\n")
        X=input (" Please input X matrix:  ")
        Y=input (" Please input Y matrix:  ")

        Xi_sum=sum(X)
        Xi_sum_1=Xi_sum*10000
        Xi_sum_2=round(Xi_sum_1)
        Xi_sum_rounded=Xi_sum_2/10000
        g1=Xi_sum_rounded // g1 = summation of Xi

        Yi_sum=sum(Y)
        Yi_sum_1=Yi_sum*10000
        Yi_sum_2=round(Yi_sum_1)
        Yi_sum_rounded=Yi_sum_2/10000
        g2=Yi_sum_rounded // g2 = summation of Yi

        i=[1:length(X)]

        XiYi=X.*Y
        XiYi_1=XiYi*10000
        XiYi_2=round(XiYi_1)
        XiYi_rounded=XiYi_2/10000
        z3=XiYi_rounded // z3 = elements of XiYi column

        XiYi_sum=sum(XiYi_rounded)
        XiYi_sum_1=XiYi_sum*10000
        XiYi_sum_2=round(XiYi_sum_1)
        XiYi_sum_rounded=XiYi_sum_2/10000
        g3=XiYi_sum_rounded // g3 = summation of XiYi

        X_squared=X.*X
        X_squared_1=X_squared*10000
        X_squared_2=round(X_squared_1)
        X_squared_rounded=X_squared_2/10000
        z4=X_squared_rounded // z4 = elements of X^2 column

        X_squared_sum=sum(X_squared_rounded)
        X_squared_sum_1=X_squared_sum*10000
        X_squared_sum_2=round(X_squared_sum_1)
        X_squared_sum_rounded=X_squared_sum_2/10000
        g4=X_squared_sum_rounded // g4 = summation of X^2

        n=size(X,'c') // number of "i"'s

        m_equation=((g2*g1)-(g3*n))/((g1*g1)-(g4*n))
        m_equation_1=m_equation*10000
        m_equation_2=round(m_equation_1)
        m_equation_rounded=m_equation_2/10000
        m=m_equation_rounded // m = slope

        y_intercept_equation=((g1*g3)-(g4*g2))/((g1*g1)-(g4*n))
        y_intercept_equation_1=y_intercept_equation*1000
        y_intercept_equation_2=round(y_intercept_equation_1)
        y_intercept_equation_rounded=y_intercept_equation_2/1000
        b1=y_intercept_equation_rounded // y_intercept = b 

        x=X'
        y_equation=(m.*x)+b1
        y_equation_1=y_equation*10000
        y_equation_2=round(y_equation_1)
        y=y_equation_2/10000
        y_absolute=abs(y)
        Y_absolute=abs(Y)
        e=y_absolute-Y_absolute'
        e_margin=abs(e)

        mprintf("\n\t\t        Data Table\n")
        mprintf("\t\ni\tXi\t\tYi\t\tXiYi\t\tX^2 \n");

        for s1=1:length(X)
            mprintf("%.0f\t%.4f\t\t%.4f\t\t%.4f\t\t%.4f\n", i(s1), X(s1), Y(s1), z3(s1), z4(s1));
        end

        mprintf("\nSum\t");
        mprintf("%.4f\t\t%.4f\t\t%.4f\t\t%.4f\n", g1, g2, g3, g4);
        mprintf("\nn\tm\t\tb \n");
        mprintf("%.0f\t%.4f\t\t%.4f\n", n, m, b1)
        mprintf("\n")
        mprintf("\n")
        disp("y = ("+string(m)+")x + ("+string(b1)+").", "The equation required of the straight line is:")
        mprintf("\n")
        mprintf("\n\n\t\t        Comparison Table\n");
        mprintf("\t\nXi\t\tYi\t\tYi (Calculated)\t\tDistance Margin \n");
        for s2=1:length(X)
            mprintf("%.4f\t\t%.4f\t\t%.4f\t\t\t%.4f\n", X(s2), Y(s2), y(s2), e_margin(s2))
        end

        y=y'
        scatter(X,Y)
        scatter(X,y, "fill")

        mprintf("\n")
        mprintf("\n")
        ANSWER2=input (" Do you want to input your own Xi values? Input yes to proceed and no to decline:  ")
        if ANSWER2==1 then
            clock2=1000000
            while clock2>0
                clf
                mprintf("\n")
                X_user_values=input (" Please input your desired Xi matrix:  ")
                x2=X_user_values'
                y2_equation=(m.*x2)+b1
                y2_equation_1=y2_equation*10000
                y2_equation_2=round(y2_equation_1)
                y2=y2_equation_2/10000
                mprintf("\n\t   Results Table\n");
                mprintf("\t\nXi\t\tYi (Calculated)\n");
                for s3=1:length(X_user_values)
                    mprintf("%.4f\t\t%.4f\n", X_user_values(s3), y2(s3))
                end    
                y2=y2'
                scatter(X,Y)
                scatter(X_user_values,y2, "fill")
                mprintf("\n")
                mprintf("\n")
                ANSWER3=input (" Reinput Xi values again?: Input Yes to proceed and No to decline:  ")
                if ANSWER3==1 then
                    continue
                elseif ANSWER3==0 then
                    clc
                    disp("Options:")
                    mprintf("\n")
                    disp("a.) Go back to program selection menu")
                    disp("b.) Exit program")
                    mprintf("\n")
                    mprintf("\n")
                    ANSWER4=input (" Choose desired action:  ")
                    if ANSWER4==123 then
                        selec_page=1
                        selec_log_page=0
                        break
                    elseif ANSWER4==231 then
                        xdel(winsid())
                        clc
                        disp("Thank you for using our program!")
                        disp("For any inquiries, contact Head Developer through this enail:")
                        disp("bernardoraevon@gmail.com")
                        abort
                    end
                end
                clock2=clock2-1
            end
        elseif ANSWER2==0 then
            clc
            disp("Options:")
            mprintf("\n")
            disp("a.) Go back to program selection menu")
            disp("b.) Exit program")
            mprintf("\n")
            mprintf("\n")
            ANSWER3=input (" Choose desired action:  ")
            if ANSWER3==123 then
                selec_page=1
                selec_log_page=0
                continue
            elseif ANSWER3==231 then 
                xdel(winsid())
                clc
                disp("Thank you for using our program!")
                disp("For any inquiries, contact Head Developer through this enail:")
                disp("bernardoraevon@gmail.com")
                abort
            end
        end
    elseif ANSWER1==231 then
        clc
        clf
        disp("Program Mode: Nonlinear Regression")
        disp("Type of Nonlinear:  ")
        mprintf("\n")
        disp("a.) Polynomial of Degree of Two")
        disp("b.) Logarithmic")
        mprintf("\n")
        mprintf("\n")
        ANSWER11=input (" Please choose which type of nonlinear:  ")
        if ANSWER11==123 then
            clc
            clf
            disp("Program Mode: Nonlinear Regression")
            disp("Nonlinear Type: Polynomial of Degree of Two")
            mprintf("\n")
            mprintf("\n")
            X=input (" Please input X matrix:  ")
            Y=input (" Please input Y matrix:  ")

            Xi_sum=sum(X)
            Xi_sum_1=Xi_sum*10000
            Xi_sum_2=round(Xi_sum_1)
            Xi_sum_rounded=Xi_sum_2/10000
            g1=Xi_sum_rounded // g1 = summation of Xi

            Yi_sum=sum(Y)
            Yi_sum_1=Yi_sum*10000
            Yi_sum_2=round(Yi_sum_1)
            Yi_sum_rounded=Yi_sum_2/10000
            g2=Yi_sum_rounded // g2 = summation of Yi

            i=[1:length(X)]

            XiYi=X.*Y
            XiYi_1=XiYi*10000
            XiYi_2=round(XiYi_1)
            XiYi_rounded=XiYi_2/10000
            z3=XiYi_rounded // z3 = elements of XiYi column

            XiYi_sum=sum(XiYi_rounded)
            XiYi_sum_1=XiYi_sum*10000
            XiYi_sum_2=round(XiYi_sum_1)
            XiYi_sum_rounded=XiYi_sum_2/10000
            g3=XiYi_sum_rounded // g3 = summation of XiYi

            X_squared=X.*X
            X_squared_1=X_squared*10000
            X_squared_2=round(X_squared_1)
            X_squared_rounded=X_squared_2/10000
            z4=X_squared_rounded // z4 = elements of X^2 column

            X_squared_sum=sum(X_squared_rounded)
            X_squared_sum_1=X_squared_sum*10000
            X_squared_sum_2=round(X_squared_sum_1)
            X_squared_sum_rounded=X_squared_sum_2/10000
            g4=X_squared_sum_rounded // g4 = summation of X^2

            X_cube=X^3
            X_cube_1=X_cube*10000
            X_cube_2=round(X_cube_1)
            X_cube_rounded=X_cube_2/10000
            z5=X_cube_rounded // z5 = elements of X^3 column

            X_cube_sum=sum(X_cube_rounded)
            X_cube_sum_1=X_cube_sum*10000
            X_cube_sum_2=round(X_cube_sum_1)
            X_cube_sum_rounded=X_cube_sum_2/10000
            g5=X_cube_sum_rounded // g5 = summation of X^3

            X_quartic=X^4
            X_quartic_1=X_quartic*10000
            X_quartic_2=round(X_quartic_1)
            X_quartic_rounded=X_quartic_2/10000
            z6=X_quartic_rounded // z6 = elements of X^4 column

            X_quartic_sum=sum(X_quartic_rounded)
            X_quartic_sum_1=X_quartic_sum*10000
            X_quartic_sum_2=round(X_quartic_sum_1)
            X_quartic_sum_rounded=X_quartic_sum_2/10000
            g6=X_quartic_sum_rounded // g6 = summation of X^4

            Xi_squared_Yi=z4.*Y
            Xi_squared_Yi_1=Xi_squared_Yi*10000
            Xi_squared_Yi_2=round(Xi_squared_Yi_1)
            Xi_squared_Yi_rounded=Xi_squared_Yi_2/10000
            z7=Xi_squared_Yi_rounded // z7 = elements of Xi^2Yi column

            Xi_squared_Yi_sum=sum(Xi_squared_Yi_rounded)
            Xi_squared_Yi_sum_1=Xi_squared_Yi_sum*10000
            Xi_squared_Yi_sum_2=round(Xi_squared_Yi_sum_1)
            Xi_squared_Yi_sum_rounded=Xi_squared_Yi_sum_2/10000
            g7=Xi_squared_Yi_sum_rounded // g7 = summation of Xi^2Yi

            n=size(X,'c') // number of "i"'s

            a1_equation=((g7*((g4*n)-(g1*g1)))-(g5*((g3*n)-(g2*g1)))+(g4*((g3*g1)-(g2*g4))))/((g6*((g4*n)-(g1*g1)))-(g5*((g5*n)-(g4*g1)))+(g4*((g5*g1)-(g4*g4))))
            a1_equation_1=a1_equation*10000
            a1_equation_2=round(a1_equation_1)
            a1_equation_rounded=a1_equation_2/10000
            a1=a1_equation_rounded // a1

            b1_equation=((g6*((g3*n)-(g2*g1)))-(g7*((g5*n)-(g4*g1)))+(g4*((g5*g2)-(g4*g3))))/((g6*((g4*n)-(g1*g1)))-(g5*((g5*n)-(g4*g1)))+(g4*((g5*g1)-(g4*g4))))
            b1_equation_1=b1_equation*10000
            b1_equation_2=round(b1_equation_1)
            b1_equation_rounded=b1_equation_2/10000
            b1=b1_equation_rounded // b1

            c1_equation=((g6*((g4*g2)-(g1*g3)))-(g5*((g5*g2)-(g4*g3)))+(g7*((g5*g1)-(g4*g4))))/((g6*((g4*n)-(g1*g1)))-(g5*((g5*n)-(g4*g1)))+(g4*((g5*g1)-(g4*g4))))
            c1_equation_1=c1_equation*10000
            c1_equation_2=round(c1_equation_1)
            c1_equation_rounded=c1_equation_2/10000
            c1=c1_equation_rounded // c1

            x_squared_equation=X^2
            x_squared=x_squared_equation'
            x=X'
            y=(a1*x_squared)+(b1*x)+c1
            y_absolute=abs(y)
            Y_absolute=abs(Y)
            e=y_absolute-Y_absolute'
            e_margin=abs(e)

            mprintf("\n\t\t        Data Table\n")
            mprintf("\t\ni\tXi\t\tYi\t\tXiYi\t\tXi^2Yi \n")

            for s1=1:length(X)
                mprintf("%.0f\t%.4f\t\t%.4f\t\t%.4f\t\t%.4f\n", i(s1), X(s1), Y(s1), z3(s1), z7(s1))
            end
            mprintf("\nSum\t");
            mprintf("%.4f\t\t%.4f\t\t%.4f\t\t%.4f\n", g1, g2, g3, g7);
            mprintf("\n")
            mprintf("\t\t\t\nX^2\t\tX^3\t\tX^4 \n")

            for s1=1:length(X)
                mprintf("%.4f\t\t%.4f\t\t%.4f\n", z4(s1), z5(s1), z6(s1))
            end

            mprintf("\n%.4f\t\t%.4f\t\t%.4f\n", g4, g5, g6)
            mprintf("\nn\ta\t\tb\t\tc \n")
            mprintf("%.0f\t%.4f\t\t%.4f\t\t%.4f\n", n, a1, b1, c1)
            mprintf("\n")
            mprintf("\n")
            disp("The required best fit curve is:", "y = ("+string(a1)+")x^2 + ("+string(b1)+")x + ("+string(c1)+").")
            mprintf("\n")
            mprintf("\n\n\t\t        Comparison Table\n");
            mprintf("\t\nXi\t\tYi\t\tYi (Calculated)\t\tDistance Margin \n");

            for s2=1:length(X)
                mprintf("%.4f\t\t%.4f\t\t%.4f\t\t\t%.4f\n", X(s2), Y(s2), y(s2), e_margin(s2))
            end

            y=y'
            scatter(X,Y)
            scatter(X,y, "fill")

            mprintf("\n")
            mprintf("\n")
            ANSWER2=input (" Do you want to input your own Xi values? Input yes to proceed and no to decline:  ")
            if ANSWER2==1 then
                clock2=1000000
                while clock2>0
                    clf
                    mprintf("\n")
                    X_user_values=input (" Please input your desired Xi matrix:  ")
                    x2=X_user_values'
                    x3=x2^2
                    y2_equation=(a1*x3)+(b1*x2)+c1
                    y2_equation_1=y2_equation*10000
                    y2_equation_2=round(y2_equation_1)
                    y2=y2_equation_2/10000
                    mprintf("\n\t   Results Table\n");
                    mprintf("\t\nXi\t\tYi (Calculated)\n");
                    for s3=1:length(X_user_values)
                        mprintf("%.4f\t\t%.4f\n", X_user_values(s3), y2(s3))
                    end    
                    y2=y2'
                    scatter(X,Y)
                    scatter(X_user_values,y2, "fill")
                    mprintf("\n")
                    mprintf("\n")
                    ANSWER3=input (" Reinput Xi values again?: Input Yes to proceed and No to decline:  ")
                    if ANSWER3==1 then
                        continue
                    elseif ANSWER3==0 then
                        clc
                        disp("Options:")
                        mprintf("\n")
                        disp("a.) Go back to program selection menu")
                        disp("b.) Exit program")
                        mprintf("\n")
                        mprintf("\n")
                        ANSWER4=input (" Choose desired action:  ")
                        if ANSWER4==123 then
                            selec_page=1
                            selec_log_page=0
                            break
                        elseif ANSWER4==231 then
                            xdel(winsid())
                            clc
                            disp("Thank you for using our program!")
                            disp("For any inquiries, contact Head Developer through this enail:")
                            disp("bernardoraevon@gmail.com")
                            abort
                        end
                    end
                    clock2=clock2-1
                end
            elseif ANSWER2==0 then
                clc
                disp("Options:")
                mprintf("\n")
                disp("a.) Go back to program selection menu")
                disp("b.) Exit program")
                mprintf("\n")
                mprintf("\n")
                ANSWER3=input (" Choose desired action:  ")
                if ANSWER3==123 then
                    selec_page=1
                    selec_log_page=0
                    continue
                elseif ANSWER3==231 then 
                    xdel(winsid())
                    clc
                    disp("Thank you for using our program!")
                    disp("For any inquiries, contact Head Developer through this enail:")
                    disp("bernardoraevon@gmail.com")
                    abort
                end
            end
        elseif ANSWER11==231 then
            clock2=10000
            while clock2>0
                clc
                clf
                disp("Program Mode: Nonlinear Regression")
                disp("Nonlinear Type: Logarithmic")
                disp("Type of Logarithmic:  ")
                mprintf("\n")
                disp("a.) y = ab^x")
                disp("b.) y = ax^b")
                disp("c.) y = ae^(bx)")
                mprintf("\n")
                mprintf("\n")
                ANSWER22=input (" Please choose which type of nonlinear:  ")
                if ANSWER22==123 then
                    clc
                    clf
                    disp("Program Mode: Nonlinear Regression")
                    disp("Nonlinear Type: Logarithmic")
                    disp("Type of Logarithmic:  y=ab^x") 
                    // ln(y) = ln(a) + x ln(b) // Y = ln(y) ; B = ln(a) ; X = x ; M = ln(b)
                    // Yi = ln(y)
                    mprintf("\n")
                    mprintf("\n")
                    X=input (" Please input X matrix:  ")
                    Y=input (" Please input Y matrix:  ")

                    Y1_equation=log(Y)
                    Y1_equation_1=Y1_equation*10000
                    Y1_equation_2=round(Y1_equation_1)
                    Y1=Y1_equation_2/10000

                    Xi_sum=sum(X)
                    Xi_sum_1=Xi_sum*10000
                    Xi_sum_2=round(Xi_sum_1)
                    Xi_sum_rounded=Xi_sum_2/10000
                    g1=Xi_sum_rounded // g1 = summation of Xi

                    Yi_sum=sum(Y1)
                    Yi_sum_1=Yi_sum*10000
                    Yi_sum_2=round(Yi_sum_1)
                    Yi_sum_rounded=Yi_sum_2/10000
                    g2=Yi_sum_rounded // g2 = summation of Yi = log(y)

                    i=[1:length(X)]

                    XiYi=X.*Y1
                    XiYi_1=XiYi*10000
                    XiYi_2=round(XiYi_1)
                    XiYi_rounded=XiYi_2/10000
                    z3=XiYi_rounded // z3 = elements of XiYi column

                    XiYi_sum=sum(XiYi_rounded)
                    XiYi_sum_1=XiYi_sum*10000
                    XiYi_sum_2=round(XiYi_sum_1)
                    XiYi_sum_rounded=XiYi_sum_2/10000
                    g3=XiYi_sum_rounded // g3 = summation of XiYi

                    X_squared=X.*X
                    X_squared_1=X_squared*100000
                    X_squared_2=round(X_squared_1)
                    X_squared_rounded=X_squared_2/100000
                    z4=X_squared_rounded // z4 = elements of X^2 column

                    X_squared_sum=sum(X_squared_rounded)
                    X_squared_sum_1=X_squared_sum*10000
                    X_squared_sum_2=round(X_squared_sum_1)
                    X_squared_sum_rounded=X_squared_sum_2/10000
                    g4=X_squared_sum_rounded // g4 = summation of X^2

                    n=size(X,'c') // number of "i"'s

                    M_equation=((g2*g1)-(g3*n))/((g1*g1)-(g4*n))
                    M_equation_1=M_equation*10000
                    M_equation_2=round(M_equation_1)
                    M_equation_rounded=M_equation_2/10000
                    M=M_equation_rounded // m = slope
                    m_equation=%e^M
                    m_equation_1=m_equation*10000
                    m_equation_2=round(m_equation_1)
                    m=m_equation_2/10000

                    y_intercept_equation=((g1*g3)-(g4*g2))/((g1*g1)-(g4*n))
                    y_intercept_equation_1=y_intercept_equation*10000
                    y_intercept_equation_2=round(y_intercept_equation_1)
                    y_intercept_equation_rounded=y_intercept_equation_2/10000
                    B1=y_intercept_equation_rounded // y_intercept = b 
                    b_equation=%e^B1
                    b_equation_1=b_equation*10000
                    b_equation_2=round(b_equation_1)
                    b1=b_equation_2/10000

                    x=X'
                    y_equation=b1*(m^x) // y = ab^x ; ( a = B = b ; b = M = m ; x = X = x )
                    y_equation_1=y_equation*10000
                    y_equation_2=round(y_equation_1)
                    y=y_equation_2/10000
                    y_absolute=abs(y)
                    Y_absolute=abs(Y)
                    e=y_absolute-Y_absolute'
                    e_margin=abs(e)

                    mprintf("\n\t\t        Data Table\n")
                    mprintf("\t\ni\tXi\t\tYi\t\tYi=ln(yi)\tXiYi\t\tX^2 \n");

                    for s1=1:length(X)
                        mprintf("%.0f\t%.4f\t\t%.4f\t\t%.4f\t\t%.4f\t\t%.4f\n", i(s1), X(s1), Y(s1), Y1(s1), z3(s1), z4(s1));
                    end

                    mprintf("\nSum\t");
                    mprintf("%.4f\t\t\t\t%.4f\t\t%.4f\t\t%.4f\n", g1, g2, g3, g4);
                    mprintf("\nn\tm\t\tb \n");
                    mprintf("%.0f\t%.4f\t\t%.4f\n", n, m, b1)
                    mprintf("\n")
                    mprintf("\n")
                    disp("The required best fit curve is:", "y = ("+string(b1)+")[("+string(m)+")^x].")
                    mprintf("\n")
                    mprintf("\n\n\t\t        Comparison Table\n");
                    mprintf("\t\nXi\t\tYi\t\tYi (Calculated)\t\tDistance Margin \n");
                    for s2=1:length(X)
                        mprintf("%.4f\t\t%.4f\t\t%.4f\t\t\t%.4f\n", X(s2), Y(s2), y(s2), e_margin(s2))
                    end

                    y=y'
                    scatter(X,Y)
                    scatter(X,y, "fill")

                    mprintf("\n")
                    mprintf("\n")
                    ANSWER2=input (" Do you want to input your own Xi values? Input yes to proceed and no to decline:  ")
                    if ANSWER2==1 then
                        clock3=1000000
                        while clock3>0
                            clf
                            mprintf("\n")
                            X_user_values=input (" Please input your desired Xi matrix:  ")
                            x2=X_user_values'
                            y2=(m.*x2)+b1
                            y2_equation_1=y2_equation*10000
                            y2_equation_2=round(y2_equation_1)
                            y2=y2_equation_2/10000
                            mprintf("\n\t   Results Table\n");
                            mprintf("\t\nXi\t\tYi (Calculated)\n");
                            for s3=1:length(X_user_values)
                                mprintf("%.4f\t\t%.4f\n", X_user_values(s3), y2(s3))
                            end    
                            y2=y2'
                            scatter(X,Y)
                            scatter(X_user_values,y2, "fill")
                            mprintf("\n")
                            mprintf("\n")
                            ANSWER3=input (" Reinput Xi values again?: Input Yes to proceed and No to decline:  ")
                            if ANSWER3==1 then
                                continue
                            elseif ANSWER3==0 then
                                clc
                                disp("Options:")
                                mprintf("\n")
                                disp("a.) Go back to program selection menu")
                                disp("b.) Select another logarithmic type")
                                disp("c.) Exit program")
                                mprintf("\n")
                                mprintf("\n")
                                ANSWER4=input (" Choose desired action:  ")
                                if ANSWER4==123 then
                                    selec_page=1
                                    selec_log_page=0
                                    break
                                elseif ANSWER4==231 then
                                    selec_page=0
                                    selec_log_page=1
                                    break
                                elseif ANSWER4==321 then
                                    xdel(winsid())
                                    clc
                                    disp("Thank you for using our program!")
                                    disp("For any inquiries, contact Head Developer through this enail:")
                                    disp("bernardoraevon@gmail.com")
                                    abort
                                end
                            end
                            clock3=clock3-1
                        end
                    elseif ANSWER2==0 then
                        clc
                        disp("Options:")
                        mprintf("\n")
                        disp("a.) Go back to program selection menu")
                        disp("b.) Select another logarithmic type")
                        disp("c.) Exit program")
                        mprintf("\n")
                        mprintf("\n")
                        ANSWER4=input (" Choose desired action:  ")
                        if ANSWER4==123 then
                            selec_page=1
                            selec_log_page=0
                            continue
                        elseif ANSWER4==231 then
                            selec_page=0
                            selec_log_page=1
                            continue
                        elseif ANSWER4==321 then 
                            xdel(winsid())
                            clc
                            disp("Thank you for using our program!")
                            disp("For any inquiries, contact Head Developer through this enail:")
                            disp("bernardoraevon@gmail.com")
                            abort
                        end
                    end
                elseif ANSWER22==231 then
                    clc
                    clf
                    disp("Program Mode: Nonlinear Regression")
                    disp("Nonlinear Type: Logarithmic")
                    disp("Type of Logarithmic:  y=ax^b") 
                    // ln(y) = ln(a) + x ln(b) // Y = ln(y) ; B = ln(a) ; X = ln(x) ; M = m
                    // Yi = ln(y)
                    mprintf("\n")
                    mprintf("\n")
                    X=input (" Please input X matrix:  ")
                    Y=input (" Please input Y matrix:  ")

                    X1_equation=log(X)
                    X1_equation_1=X1_equation*10000
                    X1_equation_2=round(X1_equation_1)
                    X1=X1_equation_2/10000

                    Y1_equation=log(Y)
                    Y1_equation_1=Y1_equation*10000
                    Y1_equation_2=round(Y1_equation_1)
                    Y1=Y1_equation_2/10000

                    Xi_sum=sum(X1)
                    Xi_sum_1=Xi_sum*10000
                    Xi_sum_2=round(Xi_sum_1)
                    Xi_sum_rounded=Xi_sum_2/10000
                    g1=Xi_sum_rounded // g1 = summation of Xi

                    Yi_sum=sum(Y1)
                    Yi_sum_1=Yi_sum*10000
                    Yi_sum_2=round(Yi_sum_1)
                    Yi_sum_rounded=Yi_sum_2/10000
                    g2=Yi_sum_rounded // g2 = summation of Yi = log(y)

                    i=[1:length(X)]

                    XiYi=X1.*Y1
                    XiYi_1=XiYi*10000
                    XiYi_2=round(XiYi_1)
                    XiYi_rounded=XiYi_2/10000
                    z3=XiYi_rounded // z3 = elements of XiYi column

                    XiYi_sum=sum(XiYi_rounded)
                    XiYi_sum_1=XiYi_sum*10000
                    XiYi_sum_2=round(XiYi_sum_1)
                    XiYi_sum_rounded=XiYi_sum_2/10000
                    g3=XiYi_sum_rounded // g3 = summation of XiYi

                    X_squared=X1.*X1
                    X_squared_1=X_squared*100000
                    X_squared_2=round(X_squared_1)
                    X_squared_rounded=X_squared_2/100000
                    z4=X_squared_rounded // z4 = elements of X^2 column

                    X_squared_sum=sum(X_squared_rounded)
                    X_squared_sum_1=X_squared_sum*10000
                    X_squared_sum_2=round(X_squared_sum_1)
                    X_squared_sum_rounded=X_squared_sum_2/10000
                    g4=X_squared_sum_rounded // g4 = summation of X^2

                    n=size(X,'c') // number of "i"'s

                    M_equation=((g2*g1)-(g3*n))/((g1*g1)-(g4*n))
                    M_equation_1=M_equation*10000
                    M_equation_2=round(M_equation_1)
                    M_equation_rounded=M_equation_2/10000
                    M=M_equation_rounded // m = slope
                    m=M

                    y_intercept_equation=((g1*g3)-(g4*g2))/((g1*g1)-(g4*n))
                    y_intercept_equation_1=y_intercept_equation*10000
                    y_intercept_equation_2=round(y_intercept_equation_1)
                    y_intercept_equation_rounded=y_intercept_equation_2/10000
                    B1=y_intercept_equation_rounded // y_intercept = b 
                    b_equation=%e^B1
                    b_equation_1=b_equation*10000
                    b_equation_2=round(b_equation_1)
                    b1=b_equation_2/10000

                    x=X1'
                    y_equation=b1*(x^m) // y = ax^b ; ( a = B = b ; b = M = m ; x = X = ln(x) )
                    y_equation_1=y_equation*10000
                    y_equation_2=round(y_equation_1)
                    y=y_equation_2/10000
                    y_absolute=abs(y)
                    Y_absolute=abs(Y)
                    e=y_absolute-Y_absolute'
                    e_margin=abs(e)

                    mprintf("\n\t\t        Data Table\n")
                    mprintf("\t\ni\tXi\t\tXi=ln(x)\tYi\t\tYi=ln(yi) \n");

                    for s1=1:length(X)
                        mprintf("%.0f\t%.4f\t\t%.4f\t\t%.4f\t\t%.4f \n", i(s1), X(s1), X1(s1), Y(s1), Y1(s1));
                    end

                    mprintf("\nSum\t");
                    mprintf("\t\t%.4f\t\t\t\t%.4f \n", g1, g2);

                    mprintf("\nXiYi\t\tX^2 \n")

                    for s1=1:length(X)
                        mprintf("%.4f\t\t%.4f \n", z3(s1), z4(s1))
                    end

                    mprintf("\n%.4f\t\t%.4f \n", g3, g4);

                    mprintf("\nn\tm\t\tb \n");
                    mprintf("%.0f\t%.4f\t\t%.4f\n", n, m, b1)
                    mprintf("\n")
                    mprintf("\n")
                    disp("The required best fit curve is:", "y = ("+string(b1)+")[x^("+string(m)+")].")
                    mprintf("\n")
                    mprintf("\n\n\t\t        Comparison Table\n");
                    mprintf("\t\nXi\t\tYi\t\tYi (Calculated)\t\tDistance Margin \n");
                    for s2=1:length(X)
                        mprintf("%.4f\t\t%.4f\t\t%.4f\t\t\t%.4f\n", X(s2), Y(s2), y(s2), e_margin(s2))
                    end

                    y=y'
                    scatter(X,Y)
                    scatter(X,y, "fill")

                    mprintf("\n")
                    mprintf("\n")
                    ANSWER2=input (" Do you want to input your own Xi values? Input yes to proceed and no to decline:  ")
                    if ANSWER2==1 then
                        clock3=1000000
                        while clock3>0
                            clf
                            mprintf("\n")
                            X_user_values=input (" Please input your desired Xi matrix:  ")
                            x2=X_user_values'
                            y2_equation=b1*(x^m) // y = ax^b ; ( a = B = b ; b = M = m ; x = X = ln(x) )
                            y2_equation_1=y2_equation*10000
                            y2_equation_2=round(y2_equation_1)
                            y2=y2_equation_2/10000
                            mprintf("\n\t   Results Table\n");
                            mprintf("\t\nXi\t\tYi (Calculated)\n");
                            for s3=1:length(X_user_values)
                                mprintf("%.4f\t\t%.4f\n", X_user_values(s3), y2(s3))
                            end    
                            y2=y2'
                            scatter(X,Y)
                            scatter(X_user_values,y2, "fill")
                            mprintf("\n")
                            mprintf("\n")
                            ANSWER3=input (" Reinput Xi values again?: Input Yes to proceed and No to decline:  ")
                            if ANSWER3==1 then
                                continue
                            elseif ANSWER3==0 then
                                clc
                                disp("Options:")
                                mprintf("\n")
                                disp("a.) Go back to program selection menu")
                                disp("b.) Select another logarithmic type")
                                disp("c.) Exit program")
                                mprintf("\n")
                                mprintf("\n")
                                ANSWER4=input (" Choose desired action:  ")
                                if ANSWER4==123 then
                                    selec_page=1
                                    selec_log_page=0
                                    break
                                elseif ANSWER4==231 then
                                    selec_page=0
                                    selec_log_page=1
                                    break
                                elseif ANSWER4==321 then
                                    xdel(winsid())
                                    clc
                                    disp("Thank you for using our program!")
                                    disp("For any inquiries, contact Head Developer through this enail:")
                                    disp("bernardoraevon@gmail.com")
                                    abort
                                end
                            end
                            clock3=clock3-1
                        end
                    elseif ANSWER2==0 then
                        clc
                        disp("Options:")
                        mprintf("\n")
                        disp("a.) Go back to program selection menu")
                        disp("b.) Select another logarithmic type")
                        disp("c.) Exit program")
                        mprintf("\n")
                        mprintf("\n")
                        ANSWER4=input (" Choose desired action:  ")
                        if ANSWER4==123 then
                            selec_page=1
                            selec_log_page=0
                            continue
                        elseif ANSWER4==231 then
                            selec_page=0
                            selec_log_page=1
                            continue
                        elseif ANSWER4==321 then 
                            xdel(winsid())
                            clc
                            disp("Thank you for using our program!")
                            disp("For any inquiries, contact Head Developer through this enail:")
                            disp("bernardoraevon@gmail.com")
                            abort
                        end
                    end
                elseif ANSWER22==321 then
                    clc
                    clf
                    disp("Program Mode: Nonlinear Regression")
                    disp("Nonlinear Type: Logarithmic")
                    disp("Type of Logarithmic:  y=ae^(bx)") 
                    // ln(y) = ln(a) + bx // Y = ln(y) ; B = ln(a) ; X = x ; M = m
                    // Yi = ln(y)
                    mprintf("\n")
                    mprintf("\n")
                    X=input (" Please input X matrix:  ")
                    Y=input (" Please input Y matrix:  ")

                    Y1_equation=log(Y)
                    Y1_equation_1=Y1_equation*10000
                    Y1_equation_2=round(Y1_equation_1)
                    Y1=Y1_equation_2/10000

                    Xi_sum=sum(X)
                    Xi_sum_1=Xi_sum*10000
                    Xi_sum_2=round(Xi_sum_1)
                    Xi_sum_rounded=Xi_sum_2/10000
                    g1=Xi_sum_rounded // g1 = summation of Xi

                    Yi_sum=sum(Y1)
                    Yi_sum_1=Yi_sum*10000
                    Yi_sum_2=round(Yi_sum_1)
                    Yi_sum_rounded=Yi_sum_2/10000
                    g2=Yi_sum_rounded // g2 = summation of Yi = log(y)

                    i=[1:length(X)]

                    XiYi=X.*Y1
                    XiYi_1=XiYi*10000
                    XiYi_2=round(XiYi_1)
                    XiYi_rounded=XiYi_2/10000
                    z3=XiYi_rounded // z3 = elements of XiYi column

                    XiYi_sum=sum(XiYi_rounded)
                    XiYi_sum_1=XiYi_sum*10000
                    XiYi_sum_2=round(XiYi_sum_1)
                    XiYi_sum_rounded=XiYi_sum_2/10000
                    g3=XiYi_sum_rounded // g3 = summation of XiYi

                    X_squared=X.*X
                    X_squared_1=X_squared*100000
                    X_squared_2=round(X_squared_1)
                    X_squared_rounded=X_squared_2/100000
                    z4=X_squared_rounded // z4 = elements of X^2 column

                    X_squared_sum=sum(X_squared_rounded)
                    X_squared_sum_1=X_squared_sum*10000
                    X_squared_sum_2=round(X_squared_sum_1)
                    X_squared_sum_rounded=X_squared_sum_2/10000
                    g4=X_squared_sum_rounded // g4 = summation of X^2

                    n=size(X,'c') // number of "i"'s

                    M_equation=((g2*g1)-(g3*n))/((g1*g1)-(g4*n))
                    M_equation_1=M_equation*10000
                    M_equation_2=round(M_equation_1)
                    M_equation_rounded=M_equation_2/10000
                    M=M_equation_rounded // m = slope
                    m=M

                    y_intercept_equation=((g1*g3)-(g4*g2))/((g1*g1)-(g4*n))
                    y_intercept_equation_1=y_intercept_equation*10000
                    y_intercept_equation_2=round(y_intercept_equation_1)
                    y_intercept_equation_rounded=y_intercept_equation_2/10000
                    B1=y_intercept_equation_rounded // y_intercept = b 
                    b_equation=%e^B1
                    b_equation_1=b_equation*10000
                    b_equation_2=round(b_equation_1)
                    b1=b_equation_2/10000

                    x=X'
                    y_equation=b+(m*x) // y = ae^(bx) ; ( a = B = b ; b = M = m ; x = X = x )
                    y_equation_1=y_equation*10000
                    y_equation_2=round(y_equation_1)
                    y=y_equation_2/10000
                    y_absolute=abs(y)
                    Y_absolute=abs(Y)
                    e=y_absolute-Y_absolute'
                    e_margin=abs(e)

                    mprintf("\n\t\t        Data Table\n")
                    mprintf("\t\ni\tXi\t\tYi\t\tYi=ln(yi) \n");

                    for s1=1:length(X)
                        mprintf("%.0f\t%.4f\t\t%.4f\t\t%.4f \n", i(s1), X(s1), Y(s1), Y1(s1));
                    end

                    mprintf("\nSum\t");
                    mprintf("%.4f\t\t\t\t%.4f \n", g1, g2);

                    mprintf("\nXiYi\t\tX^2 \n")

                    for s1=1:length(X)
                        mprintf("%.4f\t\t%.4f \n", z3(s1), z4(s1))
                    end

                    mprintf("\n%.4f\t\t%.4f \n", g3, g4);

                    mprintf("\nn\tm\t\tb \n");
                    mprintf("%.0f\t%.4f\t\t%.4f\n", n, m, b1)
                    mprintf("\n")
                    mprintf("\n")
                    disp("The required best fit curve is:", "y = e^("+string(b1)+") + ("+string(m)+")x.")
                    mprintf("\n")
                    mprintf("\n\n\t\t        Comparison Table\n");
                    mprintf("\t\nXi\t\tYi\t\tYi (Calculated)\t\tDistance Margin \n");
                    for s2=1:length(X)
                        mprintf("%.4f\t\t%.4f\t\t%.4f\t\t\t%.4f\n", X(s2), Y(s2), y(s2), e_margin(s2))
                    end

                    y=y'
                    scatter(X,Y)
                    scatter(X,y, "fill")

                    mprintf("\n")
                    mprintf("\n")
                    ANSWER2=input (" Do you want to input your own Xi values? Input yes to proceed and no to decline:  ")
                    if ANSWER2==1 then
                        clock3=1000000
                        while clock3>0
                            clf
                            mprintf("\n")
                            X_user_values=input (" Please input your desired Xi matrix:  ")
                            x2=X_user_values'
                            y2_equation=b1+(m*x) // y = ax^b ; ( a = B = b ; b = M = m ; x = X = ln(x) )
                            y2_equation_1=y2_equation*10000
                            y2_equation_2=round(y2_equation_1)
                            y2=y2_equation_2/10000
                            mprintf("\n\t   Results Table\n");
                            mprintf("\t\nXi\t\tYi (Calculated)\n");
                            for s3=1:length(X_user_values)
                                mprintf("%.4f\t\t%.4f\n", X_user_values(s3), y2(s3))
                            end    
                            y2=y2'
                            scatter(X,Y)
                            scatter(X_user_values,y2, "fill")
                            mprintf("\n")
                            mprintf("\n")
                            ANSWER3=input (" Reinput Xi values again?: Input Yes to proceed and No to decline:  ")
                            if ANSWER3==1 then
                                continue
                            elseif ANSWER3==0 then
                                clc
                                disp("Options:")
                                mprintf("\n")
                                disp("a.) Go back to program selection menu")
                                disp("b.) Select another logarithmic type")
                                disp("c.) Exit program")
                                mprintf("\n")
                                mprintf("\n")
                                ANSWER4=input (" Choose desired action:  ")
                                if ANSWER4==123 then
                                    selec_page=1
                                    selec_log_page=0
                                    break
                                elseif ANSWER4==231 then
                                    selec_page=0
                                    selec_log_page=1
                                    break
                                elseif ANSWER4==321 then
                                    xdel(winsid())
                                    clc
                                    disp("Thank you for using our program!")
                                    disp("For any inquiries, contact Head Developer through this enail:")
                                    disp("bernardoraevon@gmail.com")
                                    abort
                                end
                            end
                            clock3=clock3-1
                        end
                    elseif ANSWER2==0 then
                        clc
                        disp("Options:")
                        mprintf("\n")
                        disp("a.) Go back to program selection menu")
                        disp("b.) Select another logarithmic type")
                        disp("c.) Exit program")
                        mprintf("\n")
                        mprintf("\n")
                        ANSWER4=input (" Choose desired action:  ")
                        if ANSWER4==123 then
                            selec_page=1
                            selec_log_page=0
                            continue
                        elseif ANSWER4==231 then
                            selec_page=0
                            selec_log_page=1
                            continue
                        elseif ANSWER4==321 then 
                            xdel(winsid())
                            clc
                            disp("Thank you for using our program!")
                            disp("For any inquiries, contact Head Developer through this enail:")
                            disp("bernardoraevon@gmail.com")
                            abort
                        end
                    end
                end
                clock2=clock2-1
                if selec_page==1 & selec_log_page==0 then
                    break
                elseif selec_page==0 & selec_log_page==1 then
                    continue
                end
            end
        end
    end
    clock1=clock1-1
end
