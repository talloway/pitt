% Switch case
clear all; clc;
choice = input('Enter a or b: ', 's');

switch choice
    case {'A', 'a'}
        disp('You chose A');
    case {'b', 'B'}
        disp('YOu chose B');
    otherwise
        disp('You chose neither A nor B');
end

a = 12;
b='Halo';