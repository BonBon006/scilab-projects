clc
a=123
b=213
c=312
yes=1
no=0
disp("What type is your polynomial? Choose the letter that corresponds to your choice below.")
disp("(a) linear or nonlinear polynomial equation")
disp("(b) rational polynomial equation")
disp("(c) irrational polynomial equation (radical)")
disp("")
ANSWER2=input (" Your Choice:  ")
if ANSWER2==123 then
    y=input (" Input your polynomial equation:       ")
    x=input (" Input your x0:  ")
    z=horner(y,[x])
    z1=z*1000
    z2=int(z1)
    x1_rounded=z2/1000
    disp(x1_rounded)
elseif ANSWER2==213 then
    x=poly(0,"x")
    y=input (" Input your polynomial equation:       ")
    x=input (" Input your x0:  ")
    z=horner(y,[x])
    z1=z*1000
    z2=int(z1)
    x1_rounded=z2/1000
    disp(x1_rounded)
elseif ANSWER2==312 then
    y=input (" Input your polynomial equation:       ")
    x=input (" Input your x0:  ")
    z=horner(y,[x])
    z_nthroot=input (" Input your nthroot:  ")
    x1=nthroot (z,z_nthroot)
    x2=x1*1000
    x3=int(x2)
    x1_rounded=x3/1000
    disp(x1_rounded)
else
    clc
    disp("error.")
    abort
end
a1=x1_rounded;
if ANSWER2==123 | 213 then
    i=1
    while i<=50
    a1=x1_rounded;
    a2=horner(y,[a1]);
    a3=a2*1000;
    a4=int(a3);
    x2_rounded=a4/1000;
    disp(x2_rounded);
        if x2_rounded==x1_rounded then
            disp("The root is "+string(x2_rounded)+"")
            abort
        else
            continue
        end
    x1_rounded=x2_rounded;
    i=i+1;
    end
elseif ANSWER==312 then
    i=1
    while i<=50
    a2=horner(y,[a1])
    a3=nthroot (a2,z_nthroot)
    a4=a3*1000
    a5=int(a4)
    x2_rounded=a5/1000
    disp(x2_rounded)
        if x2_rounded==x1_rounded then
            break
            disp("The root is "+string(x2_rounded)+"")
            abort
        else
            continue
        end
    i=i+1
    x1_rounded=x2_rounded
    a1=x1_rounded
    end
end

