clc // clear console 
x=input ("input your age during your freshman:  ") // user inputs age
disp("the age of the user in his/her freshman year is "+string(x)+"")
disp("")
y=input ("please input how many years of college years your course requires of you:  ")
c=x+y // age of the user in graduation
disp("expected age of the user during graduation is "+string(c)+"")
z=input ("how old are you this 4th year?:   ")
if z>c then // z>c means that the current age of the user is greater than expected age during his graduation
    disp("The user is an irregular undergraduate.") // since z or current age is greater than c or expected age during graduation, the user is an irregular undergrad
    abort
elseif z==c-1 then // z=c means that the user's current age is equal to his/her expected age in his/her graduation year
    disp("The user is graduating this year.")
    abort
else 
    disp("ERROR: Wag kang magloko, ayusin mo yung pag-input ng age mo!")
    z=input ("how old are you this 4th year?:   ")
    if z>c then // z>c means that the current age of the user is greater than expected age during his graduation
    disp("The user is an irregular undergraduate.") // since z or current age is greater than c or expected age during graduation, the user is an irregular undergrad
    abort
    elseif z==c-1 then // z=c means that the user's current age is equal to his/her expected age in his/her graduation year
    disp("The user is graduating this year.")
    abort
    end
end
// a=b , b=a
// iba to sa a==b, b==c, then a==c
// b=1
// a==1
