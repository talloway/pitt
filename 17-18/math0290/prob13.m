clear;
clc;
x  =linspace(-10 , 10, 20);
z = linspace(-4 , 4 ,20);

x_0 = -10;
z_0 = 0;

for i = 1:length(x)
    for k = 1:length(z)
        R=sqrt(x(i)^2 + z(k)^2) ; 
        EX(i,k) =(z(i));
        EZ(i,k) = (-sin(x(k)));
       
    end
end
scaleFactor = 0.5; 
quiver ( x , z , EX, EZ, scaleFactor, 'LineWidth', 2); 
axis([-10 10 -4 4])
xlabel('Theta');
ylabel('Omega');
title('Problem 13');