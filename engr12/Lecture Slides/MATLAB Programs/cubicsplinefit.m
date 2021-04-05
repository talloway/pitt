function cubicsplinefit(x,y)

splinecoeff = splinefit(x,y);
xnew = linspace(min(x), max(x), 300);
spline_y = ppval(splinecoeff, xnew);
hold on
plot(x,y, 'k.');
plot(xnew, spline_y, 'b');
xlabel('Independent Variable');
ylabel('Dependent Variable');
title('Spline Fit');
end
