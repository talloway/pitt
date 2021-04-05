% Calculate median manually

clear all; clc;

a = [ 1 3 5 2 4 45 7];

a_sort = sort(a); % [ 1 2 3 3 5 45]
a_length = length(a); % 6

if mod(a_length, 2) == 0
    ind1 =a_length/2; % 3
    ind2 = ind1 + 1; % 4
    median_man = (a_sort(ind1) + a_sort(ind2))/2; % 3
else
    ind = ceil(a_length/2); 
    median_man = (a_sort(ind));
end

med_calc = median(a);

