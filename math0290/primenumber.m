% Input number
% Check if 1, 2, or even
% If odd, calculate prime

number = input('Enter a number: ');
prime = 'y';

for i = 2:(number-1)

if (number == 1 || number == 2)
    break
elseif mod(number,2) == 0 
    prime = 'n';
    break
elseif mod(number,i) == 0 
    prime = 'n';
    break
end
i = i + 1;

end


if prime == 'y'
    disp([num2str(number), ' is a prime number.']);
elseif prime == 'n'
    disp([num2str(number), ' is not a prime number.']);
end
    