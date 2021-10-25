% Week 3 - Plots handout

color = input('What color would you like to use for the 2nd/3rd/4th graphs (k,r,g): ','s');

subplot(2,2,1)
hold on
x = -1:0.01:1;
plot(x, x, 'r');
plot(x, x.^2, 'b');
plot(x, x.^3, 'g');
plot(x, x.^4, 'm');
title('Plot of y = x^n for n = 1, 2, 3, & 4');
xlabel('Independent variable');
ylabel('Dependent variable');
hold off


subplot(2,2,2)
x2 = 0:0.5:20;
semilogx(x2, x2.^2, 'r');
title('y = x^2 as linear/log');
xlabel('Independent Variable');
ylabel('Dependent Variable');

subplot(2,2,3)
x3 = 0:0.5:20;
semilogy(x3, x3.^2, 'g');
title('y = x^2 as log/linear');
xlabel('Independent Variable');
ylabel('Dependent Variable');

subplot(2,2,4)
x4 = 0:0.5:20;
loglog(x4, x4.^2, 'b');
title('y = x^2 as log/log');
xlabel('Independent Variable');
ylabel('Dependent Variable');

