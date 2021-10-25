% Section 6.3 Problem 2
% Equation: dx/dt = x*cos(2*t), x(0) = 1
% Generates plot of exact solution ( x(t) = exp(0.5*sin(2*t)) )
% As well as numerical approximations by Euler's Method, Runge-Kutta 2nd
% Order, and Runge-Kutta 4th Order with step sizes of 1, 0.5, 0.1, and 0.05
% On interval of [0, 4]

time = 0;
x_init = 4;


% Step size of 0.5
time2 = time;
x_init2 = x_init;
x_init22 = x_init;
x_init23 = x_init;
times2 = linspace(0, 4, 9); 

for j = 1:length(times2) 
 xvals2(j) = x_init2;
 functy2 = x_init2*-1*(times2(j)); 
 functy22 = x_init22*-1*(times2(j));
 s21 = functy22;
 s22 = (x_init22 + 0.5*s21)*-1*(times2(j)+0.5);
 rk2vals2(j) = x_init22;
 x_init22 = x_init22 + 0.5*(s21 + s22)/2;
 functy2h = functy2*0.5;
 x_init2 = x_init2 + functy2h;
 
 functy23 = x_init23*-1*(times2(j));
 w21 = functy23;
 w22 = (x_init23+(1/4)*w21)*-1*(times2(j)+(1/4));
 w23 = (x_init23+(1/4)*w22)*-1*(times2(j)+(1/4));
 w24 = (x_init23+(1/2)*w23)*-1*((times2(j)+1/2));
 rk4vals2(j) = x_init23;
 x_init23 = x_init23 + (w21 + 2*w22 + 2*w23 + w24)/12;
 
end




subplot(2,2,1)
x = linspace(0, 4, 50);
y = 4*exp(-1/2*(x).^2);
xlim([0 4]);
plot(x,y);
xlabel('t');
ylabel('x(t)');
title('Exact solution');

subplot(2,2,2)
plot(times2, xvals2);
xlabel('t');
ylabel('x(t)');
title('Euler''s Method');

subplot(2,2,3)
plot(times2, rk2vals2);
xlabel('t');
ylabel('x(t)');
title('Runge-Kutta Method: Second Order');

subplot(2,2,4)
plot(times2, rk4vals2);
xlabel('t');
ylabel('x(t)');
title('Runge-Kutta Method: Fourth Order');