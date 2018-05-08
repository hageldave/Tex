clear;
clc;

fn = @(x) sqrt(1+x^2);
x = linspace(-10,10,100);
y = arrayfun(fn,x);

plot(x,y)

