clear;
clc;

chrb = @(x,eps) 2*(eps^2)*sqrt(1+(x^2)/(eps^2));%-2*(eps^2)+1;
chrbp = @(x,eps) 1/sqrt(1+(x^2)/(eps^2));
prml = @(x,eps) eps^2*log(1+(x^2)/(eps^2));
prmlp = @(x,eps) 1/(1+(x^2)/(eps^2));
fnc1 = @(x) chrb(x,1);
fnp = @(x) prml(x,1);
fna = @(x) log(abs(x)+1);
fnl = @(x) 2*abs(x)
fnq = @(x) x*x;
fnlog = @(x) 2*log(x)
x = linspace(-4,4,100);
y1 = arrayfun(fnp,x);
y2 = arrayfun(fnlog,x);
y3 = arrayfun(fnq,x);

hold on;
p1 = plot(x,y1);
p3 = plot(x,y2,'--');
p4 = plot(x,y3,'--');
axis([0 3 0 4]);
%axis([0 3 2 6]);
axis equal
set(p1, 'Linewidth', 2.5);
%set(p2, 'Linewidth', 2.5);
set(p3, 'Linewidth', 1.3);
set(p4, 'Linewidth', 1.3);

title("PeronaMalik")
%title("Charbonnier")
ylabel('y')
set(get(gca,'ylabel'),'rotation',0)
xlabel("s")
print '-S300,400' -deps peronamalik.eps




%T = 1;
%lam = 0.1;
%delta = @(benefit) T+benefit;
%c = @(benefit) 1/(1+e^(-delta(benefit)/lam)); 
%phi = @(x) lam*( log(1-c(x)) -c(x)*log(1/c(x) -1) ) -T*c(x);
%
%
%x = linspace(-2,2,100);
%y1 = arrayfun(phi,x);
%
%hold on;
%p1 = plot(x,y1);
%%p3 = plot(x,y2,'--');
%%p4 = plot(x,y3,'--');
%axis([-inf inf -1 1]);
%axis equal
%set(p1, 'Linewidth', 2.5);
%SP = -T
%line([SP SP],[-1 1],'Color',[1 0 0])

%set(p2, 'Linewidth', 2.5);
%set(p3, 'Linewidth', 1.3);
%set(p4, 'Linewidth', 1.3);
