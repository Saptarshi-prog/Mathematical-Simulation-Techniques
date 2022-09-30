clc;
clear;
h=[];
a=0;
b=1;
n=4
fx = inline('1/(1+x)','x');
c = (b-a)/n;
rest=0;multiple=0;  % where multiple denotes the multiple of 3 and rest denotes the remaining term
h(1) = a;

for i = 2:b/c
    h(i)=h(i-1)+c;
end

for i = 2:(b/c)
    h(i)=h(i-1)+c;  % Forming a vector of succesive values of step size
end

for j =1:(b/c-1)
    if mod(j,3) == 0
        multiple= multiple+fx(h(j+1));  %adding the multiples of 3
    else
        rest=rest+fx(h(j+1));  %adding the rest terms
    end
end

ans = (3*c/8)*((fx(a)+fx(b))+(3*rest)+(2*multiple))  %finally the answer
