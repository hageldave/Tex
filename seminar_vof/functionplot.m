clear;
clc;

chrb = @(x,eps) 2*(eps^2)*sqrt(1+(x^2)/(eps^2))-2*(eps^2)+1;
fnc1 = @(x) chrb(x,1);
fnp = @(x) log(1+x^2);
fna = @(x) 2*abs(x)-1;
fnq = @(x) x*x+1;
x = linspace(-4,4,100);
y1 = arrayfun(fnc1,x);
y2 = arrayfun(fna,x);
y3 = arrayfun(fnq,x);

hold on;
p1 = plot(x,y1);
p3 = plot(x,y2,'--');
p4 = plot(x,y3,'--');
axis([-inf inf 0 5]);
axis equal
set(p1, 'Linewidth', 2.5);
set(p2, 'Linewidth', 2.5);
set(p3, 'Linewidth', 1.3);
set(p4, 'Linewidth', 1.3);
