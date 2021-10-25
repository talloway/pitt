function [x,y] = load_data()

filename = input('Please enter the name of your data file: ', 's');
file = load(filename);
x = file(:,1);
y = file(:, 2);
plot(x,y, 'gd');
title('Tortilla Chips: Frying time versus moisture content');
xlabel('Frying Time (s)');
ylabel('Moisture Content (%)');

choice = menu('Done looking at the graph? ', 'Yes');
switch choice
    case 1
        close all;
end


end
