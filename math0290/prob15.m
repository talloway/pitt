clear;
clc;
x  =linspace(0,100,20);
z = linspace(0,80,20);



for i = 1:length(x)
    for k = 1:length(z)
        R=sqrt(x(i)^2 + z(k)^2) ; 
        EX(i,k) =((0.4-0.01*z(i))*x(k));
        EZ(i,k) = ((0.005*x(k)-0.3)*z(i));
       
    end
end
scaleFactor = 0.5; 
quiver ( x , z , EX, EZ, scaleFactor, 'LineWidth', 2); 
axis([0 100 0 80])
xlabel('X');
ylabel('Y');
title('Problem 15');