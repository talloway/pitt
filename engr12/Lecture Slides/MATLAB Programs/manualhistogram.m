clear; clc;

grades=[71,58,75,90,82,89,85,94,90,81,97,94,93, 65,48,62,80,85,90,86,85,78,79,60,89];
range = max(grades) - min(grades);
bins = 10;
delta = range/bins;
bin_low_bound(1) = min(grades);
for index = 2:10
    bin_low_bound(index) = bin_low_bound(index-1) + delta;
end
data_count = [1 0 3 1 1 1 5 4 5 4];
bar(bin_low_bound,data_count)
xlabel('Bins');
ylabel('Grades');
