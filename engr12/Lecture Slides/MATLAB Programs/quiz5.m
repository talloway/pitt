disp('I love College');
A = [2,6,3,8,-2,9,4,7,1,-4];
n = 10;
Total = -5;
j=0;

for i = 1:3:n
    Total = Total+j;
    disp(['Total = ' ,num2str(Total)]);
    j = A(i);
    disp(['j = ', num2str(j)]);
end
disp(['i = ',num2str(i)]);
disp('End Now');