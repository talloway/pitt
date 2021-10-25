euler1x = [0, 1, 2, 3, 4];
euler1y = [1, 2, 1.167706, 0.404443, 0.792776];
euler2x = [0 0.5 1 1.5 2 2.5 3 3.5 4];
euler2y = [1 1.5 1.905227 1.508800 0.761950 0.512928 0.585677 0.866852 1.193612];

j = 0;
for i = 1:40
    
    euler3x(i) = j;
    j = j + 0.1;
    i = i + 1;
end
m = 0;
for k = 1:39
    
    euler3y(k) =  exp(0.5*sin(2*m));
    k = k + 1;
    m = m + 0.1;
end

g = 0;
for l = 1:80
    euler4x(l) = g;
    g = g + 0.05;
    l = l + 1;
end

p = 0;
for o = 1:80
    euler4y(o) = exp(0.5*sin(2*p));
    p = p + 0.05;
    o = o + 1;
end

xreal = linspace(0,4,100);
yreal = exp(0.5*sin(2*xreal));

subplot(2, 2, 1);
plot(xreal,yreal);
xlabel('t');
ylabel('x');
title('Real values');
subplot(2, 2, 2);
plot(euler1x, euler1y, '.-', euler2x, euler2y, '.-', euler3x, euler3y, '.-', euler4x, euler4y, '.-')
xlabel('t');
ylabel('x');
title('Euler');
xlim([0 4]);