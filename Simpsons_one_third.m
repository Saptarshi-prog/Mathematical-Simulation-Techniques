clc;
clear;
a=0;
b=1;
c=0.25;
fx = inline('1/(1+x)','x');  %defining the function
h=[];
h(1)=a;   % Initializing first term of h as the lower limit
even=0;odd=0;   % Initializing the odd and even terms
for i = 2:(b/c)
    h(i)=h(i-1)+c;  % Forming a vector of succesive values of step size
end

for j =1:(b/c-1)
    if mod(j,2) == 0
        even= even+fx(h(j+1));  %adding the even terms 
    else
        odd=odd+fx(h(j+1));  %adding the odd terms
    end
end

ans = (c/3)*((fx(a)+fx(b))+(4*odd)+(2*even))  %finally the answer
