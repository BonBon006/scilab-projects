clc
x=input(" Please input your equation:  ")
x2=x*1000
x3=ceil(x2)
x_rounded=x3/1000
disp("The answer to your equation is:  "+string(x)+"")
disp("Your answer when multiplied by 1000:  "+string(x2)+"")
disp("Your answer when rounded off to nearest integer:  "+string(x3)+"")
disp("Your answer when rounded to 3 decimal places:  "+string(x_rounded)+"")
