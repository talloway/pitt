
k = 1;
cont = 'y';

while(cont == 'y')
step = input('Enter step size: ');
y_init = -1;
x_init = 0;
xval = 0;

for i = 1:(5/step)

xvals(i) = xval;
yval(i)= y_init;
functy = x_init/y_init;
functyh = functy*step;
y_init = y_init + functyh;
xval = xval + step;
x_init = x_init + step;
i = i + 1;
end    


yreal = -1*sqrt(5^2+1);
error = abs(yreal - yval(length(yval)));
disp(['The error for a step size of ', num2str(step), ' is ', num2str(error)]);

cont = input('Would you like to continue with a different step size ', 's');
stepvals(k) = step;
errorvals(k) = error;
k = k + 1;
end

disp(stepvals);
disp(errorvals);

plot(stepvals, errorvals, 'sk');
xlabel('Step size');
ylabel('Error value');
title('Euler''s Method Error Analysis for dy/dx = x/y, 0 < x < 5');