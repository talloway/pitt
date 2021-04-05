function polynomialfit(x,y)
degree = input('Enter the order of the polynomial fit: ');
coeff = polyfit(x,y,degree);

hold on
plot(x,y,'k.');
xnew = spline(min(x), max(x), 300);
yHat = polyval(coeff,xnew);
plot(xnew,yHat,'b');
xlabel('Independent Variable');
ylabel('Dependent Variable');
title('Quadratic Fit');
end
