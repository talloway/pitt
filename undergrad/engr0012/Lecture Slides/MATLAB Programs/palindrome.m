a = input('Enter a string: ' , 's');
a_new = lower(a);
j = 0;

for i = 1:floor((length(a_new))/2)
    if a_new(i) == a_new(length(a_new) + 1 - i)
           j = j + 1; 
    end
    i = i + 1;
        
end

if (j == floor(length(a_new)/2))
            disp(['You entered: ', a_new, '. This is a palindrome.']);
        
   else
            disp(['You entered: ', a_new, '. This is not a palindrome.']);
end
    
