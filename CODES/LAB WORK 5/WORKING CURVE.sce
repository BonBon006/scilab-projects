clc
clf

yes=1
Yes=1
YES=1
no=0
No=0
No=0
a=123
A=123
b=231
B=231
c=321
C=321

clock_main=1000000
while clock_main>0
    clc
    clf
    disp("Program Mode Selection:")
    mprintf("\n")
    disp("a.) Linear")
    mprintf("\n")
    mprintf("\n")
    ANSWER1=input (" Please choose your desired program mode:  ")
    if ANSWER1==123 then
        clc
        clf
        X=input (" Please input X matrix:  ")
        Y=input (" Please input Y matrix:  ")
        
        Xi_sum=sum(X)
        Xi_sum_1=Xi_sum*1000
        Xi_sum_2=round(Xi_sum_1)
        Xi_sum_rounded=Xi_sum_2/1000
        g1=Xi_sum_rounded // g1 = summation of Xi
        
        Yi_sum=sum(Y)
        Yi_sum_1=Yi_sum*1000
        Yi_sum_2=round(Yi_sum_1)
        Yi_sum_rounded=Yi_sum_2/1000
        g2=Yi_sum_rounded // g2 = summation of Yi
        
        i=[1:length(X)]
        
        XiYi=X.*Y
        XiYi_1=XiYi*1000
        XiYi_2=round(XiYi_1)
        XiYi_rounded=XiYi_2/1000
        l3=XiYi_rounded // elements of XiYi column
        
        XiYi_sum=sum(XiYi_rounded)
        XiYi_sum_1=XiYi_sum*1000
        XiYi_sum_2=round(XiYi_sum_1)
        XiYi_sum_rounded=XiYi_sum_2/1000
        g3=XiYi_sum_rounded // summation of XiYi
        
        X_squared=X.*X
        X_squared_1=X_squared*1000
        X_squared_2=round(X_squared_1)
        X_squared_rounded=X_squared_2/1000
        l4=X_squared_rounded // elements of X^2 column
        
        X_squared_sum=sum(X_squared_rounded)
        X_squared_sum_1=X_squared_sum*1000
        X_squared_sum_2=round(X_squared_sum_1)
        X_squared_sum_rounded=X_squared_sum_2/1000
        g4=X_squared_sum_rounded // summation of X^2
        
        n=size(X,'c') // number of "i"'s
        
        m_equation=((g2*g1)-(g3*n))/((g1*g1)-(g4*n))
        m_equation_1=m_equation*1000
        m_equation_2=round(m_equation_1)
        m_equation_rounded=m_equation_2/1000
        m=m_equation_rounded // m = slope
        
        y_intercept_equation=((g1*g3)-(g4*g2))/((g1*g1)-(g4*n))
        y_intercept_equation_1=y_intercept_equation*1000
        y_intercept_equation_2=round(y_intercept_equation_1)
        y_intercept_equation_rounded=y_intercept_equation_2/1000
        b=y_intercept_equation_rounded // y_intercept = b 
        
        x=X'
        y=(m.*x)+b
        y_absolute=abs(y)
        Y_absolute=abs(Y)
        e=y_absolute-Y_absolute'
        e_margin=abs(e)
        
        mprintf("\n\t\t        Data Table\n")
        mprintf("\t\ni\tXi\t\tYi\t\tXiYi\t\tX^2 \n");
        
        for s1=1:length(X)
            mprintf("%.0f\t%.3f\t\t%.3f\t\t%.3f\t\t%.3f\n", i(s1), X(s1), Y(s1), l3(s1), l4(s1));
        end
        
        mprintf("\nSum\t");
        mprintf("%.3f\t\t%.3f\t\t%.3f\t\t%.3f\n", g1, g2, g3, g4);
        mprintf("\nn\tm\t\tb \n");
        mprintf("%.0f\t%.3f\t\t%.3f\n", n, m, b)
        mprintf("\n")
        mprintf("\n")
        disp("y = "+string(m)+"x + "+string(b)+".", "The equation required of the straight line is:")
        
        mprintf("\n\n\t\t        Comparison Table\n");
        mprintf("\t\nXi\t\tYi\t\tYi (Calculated)\t\tError Margin \n");
        for s2=1:length(X)
            mprintf("%.3f\t\t%.3f\t\t%.3f\t\t\t%.3f\n", X(s2), Y(s2), y(s2), e_margin(s2))
        end
        
        y=y'
        scatter(X,Y)
        scatter(X,y, "fill")
        
        mprintf("\n")
        mprintf("\n")
        ANSWER4=input (" Do you want to input your own Xi values? Input yes to proceed and no to decline:  ")
        if ANSWER4==1 then
            clock3=1000000
            while clock3>0
                clf
                mprintf("\n")
                X_user_values=input (" Please input your desired Xi matrix:  ")
                x2=X_user_values'
                y2=(m.*x2)+b
                mprintf("\n\t\tComparison Table\n");
                mprintf("\t\nXi\t\tYi (Calculated)\n");
                for s3=1:length(X_user_values)
                    mprintf("%.3f\t\t%.3f\n", X_user_values(s3), y(s3))
                end    
                y2=y2'
                scatter(X,Y)
                scatter(X_user_values,y2, "fill")
                mprintf("\n")
                mprintf("\n")
                ANSWER5=input (" Reinput Xi values again?: Input Yes to proceed and No to decline:  ")
                if ANSWER5==1 then
                    continue
                elseif ANSWER5==0 then
                    clc
                    clf
                    disp("Options:")
                    mprintf("\n")
                    disp("a.) Go back to program selection menu")
                    disp("b.) Exit program")
                    mprintf("\n")
                    mprintf("\n")
                    ANSWER6=input (" Choose desired action:  ")
                    if ANSWER6==123 then
                        clc
                        clf
                        break
                    elseif ANSWER6==231 then
                        clc
                        clf
                        disp("Thank you for using our program!")
                        disp("For any inquiries, contact Head Developer through this enail:")
                        disp("bernardoraevon@gmail.com")
                        abort
                    end
                end
                clock3=clock3-1
            end
        elseif ANSWER4==0 then
            clc
            clf
            disp("Options:")
            mprintf("\n")
            disp("a.) Go back to program selection menu")
            disp("b.) Exit program")
            mprintf("\n")
            mprintf("\n")
            ANSWER6=input (" Choose desired action:  ")
            if ANSWER6==123 then
                clc
                clf
            elseif ANSWER6==231 then
                clc
                clf
                disp("Thank you for using our program!")
                disp("For any inquiries, contact Head Developer through this enail:")
                disp("bernardoraevon@gmail.com")
                abort
             end
        end
    end
    if ANSWER6==231
        clc
        clf
        disp("Thank you for using our program!")
        disp("For any inquiries, contact Head Developer through this enail:")
        disp("bernardoraevon@gmail.com")
        abort
    end
    clock_main=clock_main-1
end
