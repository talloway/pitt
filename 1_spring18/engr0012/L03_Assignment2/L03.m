% Authors: Group L03: Clay Countess, Klaire Dickey, Avery Peiffer
% Created 1/19/2018
% Last Modified 1/22/2018

header = "This program solves a system of linear equations from one of a given set of files, specified in the Assignment 2 instructions.";
disp(header)
cont = 'y'; 

while (cont == 'y' || cont == 'Y')
    result = input('Enter a file name: ', 's');
    
    %try/catch to check for valid filename
    try
        data = load(result); 
    catch
        disp('You did not enter a valid filename');
        continue;
    end
    
    data2 = transpose(data);
     % Dimensions of matrix must be square to calculate inverse. For the
     % matrices that are organized by columns, the transposed matrix is
     % needed to create a square matrix. 
    [rows, cols] = size(data);
    
    % try/catch because either the regular matrix or the inverse will be
    % valid to use for calculations, never both (for the files within scope of
    % assignment). So doing the operations for A and B will always result in
    % one succeeding and the other failing
    try
    A = data(:,1:rows); % Takes all rows, and all but last column
    B = data(:, cols); % Takes all rows and last column
    catch
    A = data2(:,1:cols); % Does same thing, but for tranposed matrix
    B = data2(:, rows); % Cols and rows are switched because value are taken 
                        % from original matrix
    end
    
    %Check for bad data - bounds necessary for rounding
    if (det(A) <= 0.000000000001 && det(A) >= -0.0000000001) 
        disp('Could not compute. The data is bad :(')
        continue
    end
    
    x = inv(A)*B; % Calculates inverse
    disp(x);
    cont = input('Would you like to continue? (y/n) ', 's');
end
