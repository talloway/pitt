function linearfit(x,y)

coeff = polyfit(x,y,1);
yHat = polyval(coeff, x);
hold on
plot(x, y, 'k.');
plot(x, yHat, 'b');
xlabel('Independent Variable');
ylabel('Dependent Variable');
title('Linear Fit');




end