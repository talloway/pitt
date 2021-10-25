t = linspace(0,10,1000);
x1t = exp(-1*t).*cos(t);
x2t = exp(-1*t).*sin(t);

hold on
plot(t, x1t, 'k');
xlabel('t');
ylabel('x(t)');
title('Problem 5, Part I');
plot(t, x2t, 'k--');

