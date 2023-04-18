clc
i=1
x(i)=input
err(i)=100
while err(i)>=0.1
    x(i+1)=x^2+x+2;
    err(i+1)=abs(((x(i+1)-x(i))/(x(i+1)))*100);
    i=i+1;
end
disp(x(i))
disp(i)
disp(x(i+1))
disp(err(i))
disp(err(i+1))
