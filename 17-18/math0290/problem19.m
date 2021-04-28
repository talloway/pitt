% Step size of 0.1

time = 0;
x_init = 1;
time3 = time;
x_init3 = x_init;
x_init32 = x_init;
x_init33 = x_init;
times3 = linspace(0,5,51);

for k = 1:length(times3)
    xvals3(k) = x_init3;
    functy3 = (times3(k))/x_init3;
    functy32 = (times3(k))/x_init32;
    s31 = functy32;
    s32 = (times3(k)+0.1)/(x_init32+0.1*s31);
    rk2vals3(k) = x_init32;
    functy3h = functy3*0.1;
    x_init3 = x_init3 + functy3h;
    x_init32 = x_init32 + 0.1*(s31 + s32)/2;
end

xreal = linspace(0,5,200);
yreal = sqrt(xreal.^2+1);

subplot(2,1,1)
plot(times3, xvals3, 'm*', xreal, yreal, 'k')
title('Euler''s Method, y(0) = 1');
xlabel('x');
ylabel('y');

subplot(2,1,2)
plot(times3, rk2vals3, 'm*', xreal,yreal, 'k')
title('Runge-Kutta Method, Second Order, y(0) = 1');
xlabel('x');
ylabel('y');
    