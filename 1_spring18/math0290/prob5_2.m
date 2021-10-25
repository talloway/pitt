t = linspace(0,10,1000);
x1t = exp(-1*t).*cos(t);
x2t = exp(-1*t).*sin(t);

plot(x1t, x2t, 'k');
xlabel('x_1(t)');
ylabel('x_2(t)');
title('Problem 5, Part II');