clc;
clear;
a=0;
b=1;
c=0.25;
fx = inline('1/(1+x)','x');
h=[];
h(1)=0;
even=0;odd=0;
for i = 2:b/c
    h(i)=h(i-1)+c;
end

for j =1:(b/c-1)
    if mod(j,2) == 0
        even= even+fx(h(j+1));
    else
        odd=odd+fx(h(j+1));
    end
end

ans = (c/3)*((fx(0)+fx(h(b/c)))+(4*odd)+(2*even))