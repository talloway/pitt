linfitx = load('linFitData.dat');
x = linfitx(:,1);
y = linfitx(:,2);

hold on;
plot(x,y,'sk');
xlabel('x');
ylabel('y');

coeff = polyfit(x, y, 1);
yhat = polyval(coeff, x);
plot(x, yhat);
hold off;

eq = ['yhat = 2x+1'];
text(0,20,eq);

absE = abs(y-yhat);
relE = abs((y-yhat)./y);

SSE = sum((y-yhat).^2);
SST = sum((y-mean(y)).^2);
rsquared = 1 - (SSE/SST)