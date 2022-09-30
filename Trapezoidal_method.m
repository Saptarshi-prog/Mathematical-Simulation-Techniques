clc
clear all;
y= inline('1/(1+p)','p');
n= input('Enter the number of intervals:');
x=[];
x1= 0;
xn= 1;
h= ((xn-x1)/n);
sum=0
x(1) = 0
for i=2:n
    x(i)=x(i-1)+h;
    sum=sum+y(x(i));
end
I= (h/2)*((y(x1)+y(xn)+(2*sum)))