clc

// 2X2 MATRIX GAUSS-SEIDEL METHOD
// INPUT REQUIRED VALUES

disp("Please input the values of your matrix.")
disp("")
disp("First Equation")
disp("")
a11=input (" Please inpur a11:  ")
a12=input (" Please input a12:  ")
c1=input (" Please input c1:  ")
if a11<0 then
    a11=a11*-1
    c1=c1*-1
elseif a11>0 then
    a12=a12*-1
end
disp("Second Equation")
disp("")
a21=input (" Please input a21:  ")
a22=input (" Please input a22:  ")
c2=input (" Please input c2:  ")
if a22<0 then
    a22=a22*-1
    c2=c2*-1
elseif a22>0 then
    a21=a21*-1
end

// FIRST ITERATION

x1_1st=c1/a11
x1_1st_1=x1_1st*1000
x1_1st_2=round(x1_1st_1)
x1_1st_rounded=x1_1st_2/1000

x2_1st=(c2+(a21*x1_1st_rounded))/a22
x2_1st_1=x2_1st*1000
x2_1st_2=round(x2_1st_1)
x2_1st_rounded=x2_1st_2/1000

disp("FIRST ITERATION")
disp("x1:  "+string(x1_1st_rounded)+"")
disp("x2:  "+string(x2_1st_rounded)+"")

// SECOND ITERATION

x1_2nd=(c1+(a12*x2_1st_rounded))/a11
x1_2nd_1=x1_2nd*1000
x1_2nd_2=round(x1_2nd_1)
x1_2nd_rounded=x1_2nd_2/1000

x2_2nd=(c2+(a21*x1_2nd_rounded))/a22
x2_2nd_1=x2_2nd*1000
x2_2nd_2=round(x2_2nd_1)
x2_2nd_rounded=x2_2nd_2/1000

disp("SECOND ITERATION")
disp("x1:  "+string(x1_2nd_rounded)+"")
disp("x2:  "+string(x2_2nd_rounded)+"")

if x1_2nd_rounded==x1_1st_rounded & x2_2nd_rounded==x2_1st_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_2nd_rounded)+"")
    disp("x2:  "+string(x2_2nd_rounded)+"")
    abort
end

// THIRD ITERATION

x1_3rd=(c1+(a12*x2_2nd_rounded))/a11
x1_3rd_1=x1_3rd*1000
x1_3rd_2=round(x1_3rd_1)
x1_3rd_rounded=x1_3rd_2/1000

x2_3rd=(c2+(a21*x1_3rd_rounded))/a22
x2_3rd_1=x2_3rd*1000
x2_3rd_2=round(x2_3rd_1)
x2_3rd_rounded=x2_3rd_2/1000

disp("THIRD ITERATION")
disp("x1:  "+string(x1_3rd_rounded)+"")
disp("x2:  "+string(x2_3rd_rounded)+"")

if x1_3rd_rounded==x1_2nd_rounded & x2_3rd_rounded==x2_2nd_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_3rd_rounded)+"")
    disp("x2:  "+string(x2_3rd_rounded)+"")
    abort
end

// FOURTH ITERATION

x1_4th=(c1+(a12*x2_3rd_rounded))/a11
x1_4th_1=x1_4th*1000
x1_4th_2=round(x1_4th_1)
x1_4th_rounded=x1_4th_2/1000

x2_4th=(c2+(a21*x1_4th_rounded))/a22
x2_4th_1=x2_4th*1000
x2_4th_2=round(x2_4th_1)
x2_4th_rounded=x2_4th_2/1000

disp("FOURTH ITERATION")
disp("x1:  "+string(x1_4th_rounded)+"")
disp("x2:  "+string(x2_4th_rounded)+"")

if x1_4th_rounded==x1_3rd_rounded & x2_4th_rounded==x2_3rd_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_4th_rounded)+"")
    disp("x2:  "+string(x2_4th_rounded)+"")
    abort
end

x1_3rd_rounded_absolute=abs(x1_3rd_rounded)
x2_3rd_rounded_absolute=abs(x2_3rd_rounded)
x1_4th_rounded_absolute=abs(x1_4th_rounded)
x2_4th_rounded_absolute=abs(x2_4th_rounded)
x1_divergence_initial_checking=(x1_4th_rounded_absolute+x1_3rd_rounded_absolute)/2
x2_divergence_initial_checking=(x2_4th_rounded_absolute+x2_3rd_rounded_absolute)/2

// FIFTH ITERATION

x1_5th=(c1+(a12*x2_4th_rounded))/a11
x1_5th_1=x1_5th*1000
x1_5th_2=round(x1_5th_1)
x1_5th_rounded=x1_5th_2/1000

x2_5th=(c2+(a21*x1_5th_rounded))/a22
x2_5th_1=x2_5th*1000
x2_5th_2=round(x2_5th_1)
x2_5th_rounded=x2_5th_2/1000

disp("FIFTH ITERATION")
disp("x1:  "+string(x1_5th_rounded)+"")
disp("x2:  "+string(x2_5th_rounded)+"")

if x1_5th_rounded==x1_4th_rounded & x2_5th_rounded==x2_4th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_5th_rounded)+"")
    disp("x2:  "+string(x2_5th_rounded)+"")
    abort
end

x1_5th_rounded_absolute=abs(x1_5th_rounded)
x2_5th_rounded_absolute=abs(x2_5th_rounded)
x1_divergence_final_checking=(x1_5th_rounded_absolute+x1_4th_rounded_absolute)/2
x2_divergence_final_checking=(x2_5th_rounded_absolute+x2_4th_rounded_absolute)/2

// SIXTH ITERATION

x1_6th=(c1+(a12*x2_5th_rounded))/a11
x1_6th_1=x1_6th*1000
x1_6th_2=round(x1_6th_1)
x1_6th_rounded=x1_6th_2/1000

x2_6th=(c2+(a21*x1_6th_rounded))/a22
x2_6th_1=x2_6th*1000
x2_6th_2=round(x2_6th_1)
x2_6th_rounded=x2_6th_2/1000

disp("SIXTH ITERATION")
disp("x1:  "+string(x1_6th_rounded)+"")
disp("x2:  "+string(x2_6th_rounded)+"")

if x1_6th_rounded==x1_5th_rounded & x2_6th_rounded==x2_5th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_6th_rounded)+"")
    disp("x2:  "+string(x2_6th_rounded)+"")
    abort
end

// SEVENTH ITERATION

x1_7th=(c1+(a12*x2_6th_rounded))/a11
x1_7th_1=x1_7th*1000
x1_7th_2=round(x1_7th_1)
x1_7th_rounded=x1_7th_2/1000

x2_7th=(c2+(a21*x1_7th_rounded))/a22
x2_7th_1=x2_7th*1000
x2_7th_2=round(x2_7th_1)
x2_7th_rounded=x2_7th_2/1000

disp("SEVENTH ITERATION")
disp("x1:  "+string(x1_7th_rounded)+"")
disp("x2:  "+string(x2_7th_rounded)+"")

if x1_7th_rounded==x1_6th_rounded & x2_7th_rounded==x2_6th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_7th_rounded)+"")
    disp("x2:  "+string(x2_7th_rounded)+"")
    abort
end

// EIGTH ITERATION

x1_8th=(c1+(a12*x2_7th_rounded))/a11
x1_8th_1=x1_8th*1000
x1_8th_2=round(x1_8th_1)
x1_8th_rounded=x1_8th_2/1000

x2_8th=(c2+(a21*x1_8th_rounded))/a22
x2_8th_1=x2_8th*1000
x2_8th_2=round(x2_8th_1)
x2_8th_rounded=x2_8th_2/1000

disp("EIGTH ITERATION")
disp("x1:  "+string(x1_8th_rounded)+"")
disp("x2:  "+string(x2_8th_rounded)+"")

if x1_8th_rounded==x1_7th_rounded & x2_8th_rounded==x2_7th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_8th_rounded)+"")
    disp("x2:  "+string(x2_8th_rounded)+"")
    abort
end

// NINTH ITERATION

x1_9th=(c1+(a12*x2_8th_rounded))/a11
x1_9th_1=x1_9th*1000
x1_9th_2=round(x1_9th_1)
x1_9th_rounded=x1_9th_2/1000

x2_9th=(c2+(a21*x1_9th_rounded))/a22
x2_9th_1=x2_9th*1000
x2_9th_2=round(x2_9th_1)
x2_9th_rounded=x2_9th_2/1000

disp("NINTH ITERATION")
disp("x1:  "+string(x1_9th_rounded)+"")
disp("x2:  "+string(x2_9th_rounded)+"")

if x1_9th_rounded==x1_8th_rounded & x2_9th_rounded==x2_8th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_9th_rounded)+"")
    disp("x2:  "+string(x2_9th_rounded)+"")
    abort
end

// TENTH ITERATION

x1_10th=(c1+(a12*x2_9th_rounded))/a11
x1_10th_1=x1_10th*1000
x1_10th_2=round(x1_10th_1)
x1_10th_rounded=x1_10th_2/1000

x2_10th=(c2+(a21*x1_10th_rounded))/a22
x2_10th_1=x2_10th*1000
x2_10th_2=round(x2_10th_1)
x2_10th_rounded=x2_10th_2/1000

disp("TENTH ITERATION")
disp("x1:  "+string(x1_10th_rounded)+"")
disp("x2:  "+string(x2_10th_rounded)+"")

if x1_10th_rounded==x1_9th_rounded & x2_10th_rounded==x2_9th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_10th_rounded)+"")
    disp("x2:  "+string(x2_10th_rounded)+"")
    abort
end

// ELEVENTH ITERATION

x1_11th=(c1+(a12*x2_10th_rounded))/a11
x1_11th_1=x1_11th*1000
x1_11th_2=round(x1_11th_1)
x1_11th_rounded=x1_11th_2/1000

x2_11th=(c2+(a21*x1_11th_rounded))/a22
x2_11th_1=x2_11th*1000
x2_11th_2=round(x2_11th_1)
x2_11th_rounded=x2_11th_2/1000

disp("ELEVENTH ITERATION")
disp("x1:  "+string(x1_11th_rounded)+"")
disp("x2:  "+string(x2_11th_rounded)+"")

if x1_11th_rounded==x1_10th_rounded & x2_11th_rounded==x2_10th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_11th_rounded)+"")
    disp("x2:  "+string(x2_11th_rounded)+"")
    abort
end

// TWELFTH ITERATION

x1_12th=(c1+(a12*x2_11th_rounded))/a11
x1_12th_1=x1_12th*1000
x1_12th_2=round(x1_12th_1)
x1_12th_rounded=x1_12th_2/1000

x2_12th=(c2+(a21*x1_12th_rounded))/a22
x2_12th_1=x2_12th*1000
x2_12th_2=round(x2_12th_1)
x2_12th_rounded=x2_12th_2/1000

disp("TWELFTH ITERATION")
disp("x1:  "+string(x1_12th_rounded)+"")
disp("x2:  "+string(x2_12th_rounded)+"")

if x1_12th_rounded==x1_11th_rounded & x2_12th_rounded==x2_11th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_12th_rounded)+"")
    disp("x2:  "+string(x2_12th_rounded)+"")
    abort
end

// THIRTEENTH ITERATION

x1_13th=(c1+(a12*x2_12th_rounded))/a11
x1_13th_1=x1_13th*1000
x1_13th_2=round(x1_13th_1)
x1_13th_rounded=x1_13th_2/1000

x2_13th=(c2+(a21*x1_13th_rounded))/a22
x2_13th_1=x2_13th*1000
x2_13th_2=round(x2_13th_1)
x2_13th_rounded=x2_13th_2/1000

disp("THIRTEENTH ITERATION")
disp("x1:  "+string(x1_13th_rounded)+"")
disp("x2:  "+string(x2_13th_rounded)+"")

if x1_13th_rounded==x1_12th_rounded & x2_13th_rounded==x2_12th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_13th_rounded)+"")
    disp("x2:  "+string(x2_13th_rounded)+"")
    abort
end

// FOURTEENTH ITERATION

x1_14th=(c1+(a12*x2_13th_rounded))/a11
x1_14th_1=x1_14th*1000
x1_14th_2=round(x1_14th_1)
x1_14th_rounded=x1_14th_2/1000

x2_14th=(c2+(a21*x1_14th_rounded))/a22
x2_14th_1=x2_14th*1000
x2_14th_2=round(x2_14th_1)
x2_14th_rounded=x2_14th_2/1000

disp("FOURTEENTH ITERATION")
disp("x1:  "+string(x1_14th_rounded)+"")
disp("x2:  "+string(x2_14th_rounded)+"")

if x1_14th_rounded==x1_13th_rounded & x2_14th_rounded==x2_13th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_14th_rounded)+"")
    disp("x2:  "+string(x2_14th_rounded)+"")
    abort
end

// FIFTEENTH ITERATION

x1_15th=(c1+(a12*x2_14th_rounded))/a11
x1_15th_1=x1_15th*1000
x1_15th_2=round(x1_15th_1)
x1_15th_rounded=x1_15th_2/1000

x2_15th=(c2+(a21*x1_15th_rounded))/a22
x2_15th_1=x2_15th*1000
x2_15th_2=round(x2_15th_1)
x2_15th_rounded=x2_15th_2/1000

disp("FIFTEENTH ITERATION")
disp("x1:  "+string(x1_15th_rounded)+"")
disp("x2:  "+string(x2_15th_rounded)+"")

if x1_15th_rounded==x1_14th_rounded & x2_15th_rounded==x2_14th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_15th_rounded)+"")
    disp("x2:  "+string(x2_15th_rounded)+"")
    abort
end

// SIXTEENTH ITERATION

x1_16th=(c1+(a12*x2_15th_rounded))/a11
x1_16th_1=x1_16th*1000
x1_16th_2=round(x1_16th_1)
x1_16th_rounded=x1_16th_2/1000

x2_16th=(c2+(a21*x1_16th_rounded))/a22
x2_16th_1=x2_16th*1000
x2_16th_2=round(x2_16th_1)
x2_16th_rounded=x2_16th_2/1000

disp("SIXTEENTH ITERATION")
disp("x1:  "+string(x1_16th_rounded)+"")
disp("x2:  "+string(x2_16th_rounded)+"")

if x1_16th_rounded==x1_15th_rounded & x2_16th_rounded==x2_15th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_16th_rounded)+"")
    disp("x2:  "+string(x2_16th_rounded)+"")
    abort
end

// SEVENTEENTH ITERATION

x1_17th=(c1+(a12*x2_16th_rounded))/a11
x1_17th_1=x1_17th*1000
x1_17th_2=round(x1_17th_1)
x1_17th_rounded=x1_17th_2/1000

x2_17th=(c2+(a21*x1_17th_rounded))/a22
x2_17th_1=x2_17th*1000
x2_17th_2=round(x2_17th_1)
x2_17th_rounded=x2_17th_2/1000

disp("SEVENTEENTH ITERATION")
disp("x1:  "+string(x1_17th_rounded)+"")
disp("x2:  "+string(x2_17th_rounded)+"")

if x1_17th_rounded==x1_16th_rounded & x2_17th_rounded==x2_16th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_17th_rounded)+"")
    disp("x2:  "+string(x2_17th_rounded)+"")
    abort
end

// EIGHTEENTH ITERATION

x1_18th=(c1+(a12*x2_17th_rounded))/a11
x1_18th_1=x1_18th*1000
x1_18th_2=round(x1_18th_1)
x1_18th_rounded=x1_18th_2/1000

x2_18th=(c2+(a21*x1_18th_rounded))/a22
x2_18th_1=x2_18th*1000
x2_18th_2=round(x2_18th_1)
x2_18th_rounded=x2_18th_2/1000

disp("EIGHTEENTH ITERATION")
disp("x1:  "+string(x1_18th_rounded)+"")
disp("x2:  "+string(x2_18th_rounded)+"")

if x1_18th_rounded==x1_17th_rounded & x2_18th_rounded==x2_17th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_18th_rounded)+"")
    disp("x2:  "+string(x2_18th_rounded)+"")
    abort
end

// NINETEENTH ITERATION

x1_19th=(c1+(a12*x2_18th_rounded))/a11
x1_19th_1=x1_19th*1000
x1_19th_2=round(x1_19th_1)
x1_19th_rounded=x1_19th_2/1000

x2_19th=(c2+(a21*x1_19th_rounded))/a22
x2_19th_1=x2_19th*1000
x2_19th_2=round(x2_19th_1)
x2_19th_rounded=x2_19th_2/1000

disp("NINETEENTH ITERATION")
disp("x1:  "+string(x1_19th_rounded)+"")
disp("x2:  "+string(x2_19th_rounded)+"")

if x1_19th_rounded==x1_18th_rounded & x2_19th_rounded==x2_18th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_19th_rounded)+"")
    disp("x2:  "+string(x2_19th_rounded)+"")
    abort
end

// TWENTIETH ITERATION

x1_20th=(c1+(a12*x2_19th_rounded))/a11
x1_20th_1=x1_20th*1000
x1_20th_2=round(x1_20th_1)
x1_20th_rounded=x1_20th_2/1000

x2_20th=(c2+(a21*x1_20th_rounded))/a22
x2_20th_1=x2_20th*1000
x2_20th_2=round(x2_20th_1)
x2_20th_rounded=x2_20th_2/1000

disp("TWENTIETH ITERATION")
disp("x1:  "+string(x1_20th_rounded)+"")
disp("x2:  "+string(x2_20th_rounded)+"")

if x1_20th_rounded==x1_19th_rounded & x2_20th_rounded==x2_19th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_20th_rounded)+"")
    disp("x2:  "+string(x2_20th_rounded)+"")
    abort
end

// TWENTY-FIRST ITERATION

x1_21st=(c1+(a12*x2_20th_rounded))/a11
x1_21st_1=x1_21st*1000
x1_21st_2=round(x1_21st_1)
x1_21st_rounded=x1_21st_2/1000

x2_21st=(c2+(a21*x1_21st_rounded))/a22
x2_21st_1=x2_21st*1000
x2_21st_2=round(x2_21st_1)
x2_21st_rounded=x2_21st_2/1000

disp("TWENTY-FIRST ITERATION")
disp("x1:  "+string(x1_21st_rounded)+"")
disp("x2:  "+string(x2_21st_rounded)+"")

if x1_21st_rounded==x1_20th_rounded & x2_21st_rounded==x2_20th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_21st_rounded)+"")
    disp("x2:  "+string(x2_21st_rounded)+"")
    abort
end

// TWENTY-SECOND ITERATION

x1_22nd=(c1+(a12*x2_21st_rounded))/a11
x1_22nd_1=x1_22nd*1000
x1_22nd_2=round(x1_22nd_1)
x1_22nd_rounded=x1_22nd_2/1000

x2_22nd=(c2+(a21*x1_22nd_rounded))/a22
x2_22nd_1=x2_22nd*1000
x2_22nd_2=round(x2_22nd_1)
x2_22nd_rounded=x2_22nd_2/1000

disp("TWENTY-SECOND ITERATION")
disp("x1:  "+string(x1_22nd_rounded)+"")
disp("x2:  "+string(x2_22nd_rounded)+"")

if x1_22nd_rounded==x1_21st_rounded & x2_22nd_rounded==x2_21st_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_22nd_rounded)+"")
    disp("x2:  "+string(x2_22nd_rounded)+"")
    abort
end

// TWENTY-THIRD ITERATION

x1_23rd=(c1+(a12*x2_22nd_rounded))/a11
x1_23rd_1=x1_23rd*1000
x1_23rd_2=round(x1_23rd_1)
x1_23rd_rounded=x1_23rd_2/1000

x2_23rd=(c2+(a21*x1_23rd_rounded))/a22
x2_23rd_1=x2_23rd*1000
x2_23rd_2=round(x2_23rd_1)
x2_23rd_rounded=x2_23rd_2/1000

disp("TWENTY-THIRD ITERATION")
disp("x1:  "+string(x1_23rd_rounded)+"")
disp("x2:  "+string(x2_23rd_rounded)+"")

if x1_23rd_rounded==x1_22nd_rounded & x2_23rd_rounded==x2_22nd_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_23rd_rounded)+"")
    disp("x2:  "+string(x2_23rd_rounded)+"")
    abort
end

// TWENTY-FOURTH ITERATION

x1_24th=(c1+(a12*x2_23rd_rounded))/a11
x1_24th_1=x1_24th*1000
x1_24th_2=round(x1_24th_1)
x1_24th_rounded=x1_24th_2/1000

x2_24th=(c2+(a21*x1_24th_rounded))/a22
x2_24th_1=x2_24th*1000
x2_24th_2=round(x2_24th_1)
x2_24th_rounded=x2_24th_2/1000

disp("TWENTY-FOURTH ITERATION")
disp("x1:  "+string(x1_24th_rounded)+"")
disp("x2:  "+string(x2_24th_rounded)+"")

if x1_24th_rounded==x1_23rd_rounded & x2_24th_rounded==x2_23rd_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_24th_rounded)+"")
    disp("x2:  "+string(x2_24th_rounded)+"")
    abort
end

// TWENTY-FIFTH ITERATION

x1_25th=(c1+(a12*x2_24th_rounded))/a11
x1_25th_1=x1_25th*1000
x1_25th_2=round(x1_25th_1)
x1_25th_rounded=x1_25th_2/1000

x2_25th=(c2+(a21*x1_25th_rounded))/a22
x2_25th_1=x2_25th*1000
x2_25th_2=round(x2_25th_1)
x2_25th_rounded=x2_25th_2/1000

disp("TWENTY-FIFTH ITERATION")
disp("x1:  "+string(x1_25th_rounded)+"")
disp("x2:  "+string(x2_25th_rounded)+"")

if x1_25th_rounded==x1_24th_rounded & x2_25th_rounded==x2_24th_rounded then
    disp("")
    disp("CONDITION MET: Two successive approximations.")
    disp("x1:  "+string(x1_25th_rounded)+"")
    disp("x2:  "+string(x2_25th_rounded)+"")
    abort

// CONDITION: MUST BE STRICTLY DIAGONALLY DOMINANT

elseif x1_divergence_final_checking>x1_divergence_initial_checking & x2_divergence_final_checking>x2_divergence_initial_checking then
    disp("")
    disp("ERROR: Divergences of approximations are occuring! This may be because of the matrix provided, which may not be strictly diagonally dominant!")
    disp("RECOMMENDED ACTION: Interchange the rows inside your matrix such that the matrix is strictly diagonally dominant.")
    disp("IMPORTANT NOTE: This conditional error may not always be the case. Although it is important to take note of that Jacobi Method always CONVERGES.")
    abort
else
    disp("")
    disp("ERROR: EXCEEDED THE APPROXIMATING CAPABILITIES OF THE PROGRAM!")
    disp("RECOMMENDED ACTION: Switch to Jacobi Method. You can also wait for the next update of this program.")
    disp("For any inquiries, please contact Head Developer through email: bernardoraevon@gmail.com")
end
