clc
f(x)=input ("please input polynomial equation:   ") // poly([a,b,c,..nth],"x","coeff")
x=input ("please input your abcisca or value of x:   ") // poly([3,0,1,1],"x","coeff")
horner(f(x),[x]) // 1x^3 + 1x^2 + 3 ; x=3 then --> (3)^3 + (3)^2 + 3
c=horner(f(x),[x])
disp("f(x) is equal to "+string(c)+" ; the value of x being "+string(x)+"")
abort

// x^3 + x^2 + 3 ; x=3 then --> (3)^3 + (3)^2 + 3 = 27 + 9 + 3 = 39


// poly([6,-2,4,5],"x","coeff")