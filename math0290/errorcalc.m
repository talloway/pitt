stepsize = log([0.1 0.05 0.025 0.0125 0.00625]);

eulererror = log([exp(1) - 2.5937, exp(1) - 2.6533, exp(1) - 2.6851, exp(1) - 2.7015, exp(1) - 2.7098]);
rk2error = log([exp(1) - 2.71408, exp(1) - 2.7172, exp(1) - 2.7180, exp(1) - 2.7182, exp(1) - 2.7183]);
rk4error = log(abs([exp(1) - 2.71833, exp(1) - 2.71832, exp(1) - 2.71831, exp(1) - 2.718285, exp(1) - 2.7182805]));

plot(stepsize, eulererror, stepsize, rk2error, stepsize, rk4error)
xlabel('log(Step Size)');
ylabel('log(Maximum Error)');
title('Error comparison for dx/dt = x, 0 < x < 1');