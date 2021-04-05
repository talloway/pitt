% Group L03: Clay Countess, Klaire Dickey, Avery Peiffer
% Engineering 0012 T, Th 2:00-4:00
% Instructor: Mahender Mandala
% Date: 1/24/2018
% Assignment #3
% The purpose of this script is to... I don't know. There is no purpose. We
% live to die. 

clear; clc; % Clears the screen
repeat  = 'y'; % Variable that will determine if the script ends or not

while (lower(repeat) == 'y')
data_file = input('Enter the name of a data file (Adamtown.dat or Ireneville.dat): ', 's'); % Stores the entered name of the data file as a string
data_file2 = input('Enter the name of the other data file (Adamtown.dat or Ireneville.dat): ', 's');

try % Tries
    data_file = lower(data_file); % Changes the name to lowercase
    data_file2 = lower(data_file2);
    dataset = load(data_file); % Attempts to load the file
    dataset2 = load(data_file2);
    dataset = transpose(dataset); % Makes dataset easier to read
    dataset2 = transpose(dataset2);
catch
    disp('You did not enter a valid filename.'); 
    repeat = 'n'; 
    continue;
end 

maximum = 0; % Declares value to be used to calculate maximum. Alternatively, maximum = min(dataset); etc.
minimum = 10000000000; % Declares value to be used to calculate minimum
maximum2 = 0;
minimum2 = 100000000000;
dataset_length = length(dataset); % Defines length of dataset
dataset2_length = length(dataset2);

mean_average = sum(dataset)/dataset_length; % Defines mean
mean_average2 = sum(dataset2)/dataset2_length;

sumdiffsquares = 0;
sumdiffsquares2 = 0;

for index = 1:dataset_length
    if dataset(index) > maximum % Compares maximum to each element of the dataset and changes value if the new element is greater
        maximum = dataset(index); 
    end
    if dataset(index) < minimum % Does same for minimum
        minimum = dataset(index);
    end
    sumdiffsquares = sumdiffsquares + (dataset(index)-mean_average)^2; % Use for variance and standard deviation
end

for index2 = 1:dataset2_length
    if dataset2(index2) > maximum2 % Compares maximum to each element of the dataset and changes value if the new element is greater
        maximum2 = dataset2(index2); 
    end
    if dataset2(index2) < minimum2 % Does same for minimum
        minimum2 = dataset2(index2);
    end
    sumdiffsquares2 = sumdiffsquares2 + (dataset2(index2) - mean_average2)^2; % Use for variance and standard deviation
end

% Calculate variance and standard deviation
variance = sumdiffsquares/(dataset_length-1);
stdev = sqrt(variance);
variance2 = sumdiffsquares2/(dataset2_length-1);
stdev2 = sqrt(variance2);

dataset_sorted = sort(dataset);
dataset2_sorted = sort(dataset2);

% Find the median of each dataset
if (mod(length(dataset_sorted),2) == 0)
    median_1 = (dataset_sorted(length(dataset_sorted)/2) + dataset_sorted(length(dataset_sorted)/2+1))/2;
else
    median_1 = (dataset_sorted(length(dataset_sorted)/2+0.5));
end    

if (mod(length(dataset2_sorted),2) == 0)
    median_2 = (dataset2_sorted(length(dataset2_sorted)/2) + dataset2_sorted(length(dataset2_sorted)/2+1))/2;
else
    median_2 = (dataset2_sorted(length(dataset2_sorted)/2+0.5));
end




% Display structures with all calculated values from the program
datasetone = struct('Name', data_file, 'Mean', num2str(mean_average), 'Maximum', num2str(maximum), 'Minimum', num2str(minimum), 'Median', num2str(median_1), 'Variance', num2str(variance), 'Deviation', num2str(stdev));
datasettwo = struct('Name', data_file2, 'Mean', num2str(mean_average2), 'Maximum', num2str(maximum2), 'Minimum', num2str(minimum2), 'Median', num2str(median_2), 'Variance', num2str(variance2), 'Deviation', num2str(stdev2));
disp(datasetone);   
disp(datasettwo);



repeat = input('Would you like to continue the script? (y/n)', 's');
end
