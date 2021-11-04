% Section 6.3 Problem 2
% Equation: dx/dt = x*cos(2*t), x(0) = 1
% Generates plot of exact solution ( x(t) = exp(0.5*sin(2*t)) )
% As well as numerical approximations by Euler's Method, Runge-Kutta 2nd
% Order, and Runge-Kutta 4th Order with step sizes of 1, 0.5, 0.1, and 0.05
% On interval of [0, 4]

time = 0;
x_init = 1;



% Step size of 0.1
time3 = time;
x_init3 = x_init;
x_init32 = x_init;
x_init33 = x_init;
times3 = linspace(0,1,161);

for k = 1:length(times3)
    xvals3(k) = x_init3;
    functy3 = x_init3;
    functy32 = x_init32;
    s31 = functy32;
    s32 = (x_init32 + 0.00625*s31);
    rk2vals3(k) = x_init32;
    functy3h = functy3*0.00625;
    x_init3 = x_init3 + functy3h;
    x_init32 = x_init32 + 0.00625*(s31 + s32)/2;
    
    functy24 = x_init33;
    w31 = functy24;
    w32 = (x_init33+(1/320)*w31);
    w33 = (x_init33+(1/320)*w32);
    w34 = (x_init33+(1/160)*w33);
    rk4vals3(k) = x_init33;
    x_init33 = x_init33 + (w31 + 2*w32 + 2*w33 + w34)/960;
end




subplot(2,2,1)
x = linspace(0, 1, 50);
y = exp(x);
plot(x,y);
xlabel('t');
ylabel('x(t)');
title('Exact solution, step size = 0.00625');

subplot(2,2,2)
plot(times3, xvals3);
xlabel('t');
ylabel('x(t)');
title('Euler''s Method');

subplot(2,2,3)
plot(times3, rk2vals3)
xlabel('t');
ylabel('x(t)');

title('Runge-Kutta Method: Second Order');

subplot(2,2,4)
plot(times3, rk4vals3);
xlabel('t');
ylabel('x(t)');
title('Runge-Kutta Method: Fourth Order');