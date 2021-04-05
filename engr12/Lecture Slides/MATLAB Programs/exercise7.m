linfit = load('linFitData.dat');
close all;
x = linfit(1,:);
y = linfit(2,:);

coeff = polyfit(x,y,1);
yHat = polyval(coeff, x);

hold on
plot(x,y,'.');
plot(x,yHat,'r');
xlabel('Independent Variable');
ylabel('Dependent Variable');
title('Linear regression of linfit data');

absError = yHat - y;
relError = (yHat - y)./yHat;
disp(['Maximum absolute error: ', num2str(max(absError))]);
disp(['Maximum relative error: ', num2str(max(relError))]);
SSE = sum((y-yHat).^2);
SST = sum((y-mean(y)).^2);
rsquared = 1-(SSE/SST);
disp(['R-squared value: ', num2str(rsquared)]);

eq = ['yHat = ', num2str(coeff(1)), '*x + ', num2str(coeff(2))];
text(0,20,eq);