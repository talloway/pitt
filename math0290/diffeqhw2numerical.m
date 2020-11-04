% Section 6.3 Problem 2
% Equation: dx/dt = x*cos(2*t), x(0) = 1
% Generates plot of exact solution ( x(t) = exp(0.5*sin(2*t)) )
% As well as numerical approximations by Euler's Method, Runge-Kutta 2nd
% Order, and Runge-Kutta 4th Order with step sizes of 1, 0.5, 0.1, and 0.05
% On interval of [0, 4]

time = 0;
x_init = 1;

% Step size of 1
time1 = time;
x_init1 = x_init;
x_init12 = x_init;
x_init13 = x_init;
times = linspace(0, 4, 5);

for i = 1:length(times)
 functy = x_init1*cos(2*times(i)); % Input equation - step size multiplication omitted below
 functy12 = x_init12*cos(2*times(i));
 s1 = functy12;
 s2 = (x_init12 + 1*s1)*cos(2*(times(i)));
 rk2vals(i) = x_init12;
 xvals(i) = x_init1;
 x_init1 = x_init1 + functy;
 x_init12 = x_init12 + 1*(s1 + s2)/2;
 
 functy13 = x_init13*cos(2*times(i));
 w1 = functy13;
 w2 = (x_init13+(1/2)*w1)*cos(2*(times(i)+1/2));
 w3 = (x_init13+(1/2)*w2)*cos(2*(times(i)+1/2));
 w4 = (x_init13+w3)*cos(2*(times(i)+1));
 rk4vals(i) = x_init13;
 x_init13 = x_init13 + (w1 + 2*w2 + 2*w3 + w4)/6;
end

% Step size of 0.5
time2 = time;
x_init2 = x_init;
x_init22 = x_init;
x_init23 = x_init;
times2 = linspace(0, 4, 9); 

for j = 1:length(times2) 
 xvals2(j) = x_init2;
 functy2 = x_init2*cos(2*times2(j)); 
 functy22 = x_init22*(cos(2*times2(j)));
 s21 = functy22;
 s22 = (x_init22 + 0.5*s21)*cos(2*(times2(j) + 0.5));
 rk2vals2(j) = x_init22;
 x_init22 = x_init22 + 0.5*(s21 + s22)/2;
 functy2h = functy2*0.5;
 x_init2 = x_init2 + functy2h;
 
 functy23 = x_init23*cos(2*times2(j));
 w21 = functy23;
 w22 = (x_init23+(1/4)*w21)*cos(2*(times2(j)+1/4));
 w23 = (x_init23+(1/4)*w22)*cos(2*(times2(j)+(1/4)));
 w24 = (x_init23+(1/2)*w23)*cos(2*(times2(j)+1/2));
 rk4vals2(j) = x_init23;
 x_init23 = x_init23 + (w21 + 2*w22 + 2*w23 + w24)/12;
 
end


% Step size of 0.1
time3 = time;
x_init3 = x_init;
x_init32 = x_init;
x_init33 = x_init;
times3 = linspace(0,4,41);

for k = 1:length(times3)
    xvals3(k) = x_init3;
    functy3 = x_init3*cos(2*times3(k));
    functy32 = x_init32*(cos(2*times3(k)));
    s31 = functy32;
    s32 = (x_init32 + 0.1*s31)*cos(2*(times3(k) + 0.1));
    rk2vals3(k) = x_init32;
    functy3h = functy3*0.1;
    x_init3 = x_init3 + functy3h;
    x_init32 = x_init32 + 0.1*(s31 + s32)/2;
    
    functy24 = x_init33*cos(2*times3(k));
    w31 = functy24;
    w32 = (x_init33+(1/20)*w31)*cos(2*(times3(k)+1/20));
    w33 = (x_init33+(1/20)*w32)*cos(2*(times3(k)+(1/20)));
    w34 = (x_init33+(1/10)*w33)*cos(2*(times3(k)+(1/10)));
    rk4vals3(k) = x_init33;
    x_init33 = x_init33 + (w31 + 2*w32 + 2*w33 + w34)/60;
end

% Step size of 0.05
time4 = time;
x_init4 = x_init;
x_init42 = x_init;
x_init43 = x_init;
times4 = linspace(0,4,81);

for l = 1:length(times4)
    xvals4(l) = x_init4;
    functy4 = x_init4*cos(2*times4(l));
    functy42 = x_init42*(cos(2*times4(l)));
    s41 = functy42;
    s42 = (x_init42 + 0.05*s41)*cos(2*(times4(l) + 0.05));
    rk2vals4(l) = x_init42;
    functy4h = functy4*0.05;
    x_init4 = x_init4 + functy4h;
    x_init42 = x_init42 + 0.05*(s41 + s42)/2;
    
    functy44 = x_init43*cos(2*times4(l));
    w41 = functy44;
    w42 = (x_init43+(1/40)*w41)*cos(2*(times4(l)+(1/40)));
    w43 = (x_init43+(1/40)*w42)*cos(2*(times4(l)+(1/40)));
    w44 = (x_init43 + (1/20)*w43)*cos(2*(times4(l)+(1/20)));
    rk4vals4(l) = x_init43;
    x_init43 = x_init43 + (w41 + 2*w42 + 2*w43 + w44)/120;
end


subplot(2,2,1)
x = linspace(0, 4, 50);
y = exp(sin(2*x)/2);
xlim([0 4]);
ylim([0 2]);
plot(x,y);
xlabel('t');
ylabel('x(t)');
title('Exact solution');

subplot(2,2,2)
plot(times, xvals, times2, xvals2, times3, xvals3, times4, xvals4);
xlabel('t');
ylabel('x(t)');
title('Euler''s Method');

subplot(2,2,3)
plot(times, rk2vals, times2, rk2vals2, times3, rk2vals3, times4, rk2vals4)
xlabel('t');
ylabel('x(t)');
ylim([0 3]);
title('Runge-Kutta Method: Second Order');

subplot(2,2,4)
plot(times, rk4vals, times2, rk4vals2, times3, rk4vals3, times4, rk4vals4)
xlabel('t');
ylabel('x(t)');
title('Runge-Kutta Method: Fourth Order');