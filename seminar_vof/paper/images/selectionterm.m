clear;
clc;

phi = @(c) c*log(c) + (1-c)*log(1-c);
dphi = @(c) log(1/c-1);
cofdelta = @(delta) 1/(1+exp(-delta/0.2));
cofdelta2 = @(delta) 1/(1+exp(-delta/0.8));

x = linspace(0,1,100);
y = arrayfun(phi,x);
y1 = arrayfun(cofdelta,x);
y2 = arrayfun(cofdelta2,x);

p1 = plot(x,y);
set(p1, 'Linewidth', 2.5);
axis([0 1 -0.75 0])
axis equal;
title(" ")
ylabel('')
xlabel('c')
set(get(gca,'ylabel'),'rotation',0)
%print '-S300,225' -deps selectionterm.eps



x = linspace(-3,3,100);
y = arrayfun(phi,x);
y1 = arrayfun(cofdelta,x);
y2 = arrayfun(cofdelta2,x);

p1 = plot(x,y1);
hold on;
p2 = plot(x,y2, "--");
set(p1, 'Linewidth', 2.5);
set(p2, 'Linewidth', 2.5);
axis([-2 2 -1 2])
axis equal;
title(" ")
ylabel('c')
xlabel('delta')
set(gca,'YTick',[-1 0 1 2])
set(get(gca,'ylabel'),'rotation',0)
%print '-S300,225' -deps cofdelta.eps
hold off;

phiofdelta = @(d) 0.8*phi(cofdelta2(d));
y = arrayfun(phiofdelta,x);
plot(x,y)