function fitting(x,y)

hold on
plot(x,y,'r*');
xlabel('frying time (seconds)');
ylabel('moisture content (%)');
title('Tortilla chips: frying time versus moisture content');
orderfit = menu('What order polynomial would you like to fit to the data set? ', '1 (Linear)', '2 (Quadratic)', '3 (Cubic)');
switch orderfit
    case 1
        coeff = polyfit(x,y,1);
    case 2
        coeff = polyfit(x,y,2);
    case 3
        coeff = polyfit(x,y,3);
end
for i =1:length(coeff)
    disp(num2str(coeff(i)));
end
yHat = polyval(coeff, x);
plot(x,yHat, 'b');
switch orderfit
    case 1
    text(10,10,['y = ', num2str(coeff(1)), '*x + ', num2str(coeff(2))]);
end
end
