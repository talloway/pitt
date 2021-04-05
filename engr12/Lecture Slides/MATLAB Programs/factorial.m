function [output] = factorial(number)

output = 1;
for i = 1:number
    output = output*i;
end

