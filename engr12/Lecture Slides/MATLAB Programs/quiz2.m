disp('Start of problem')
a = 2
while a < 4
    b = 4;
    while b>=a
        b = b - 1;
        disp(a+b)
    end
    a = a + 1
end
disp('End of problem')

repeat = 'y';
while lower(repeat) == 'y'
    a = input('Enter a: ');
    b = input('Enter b: ');
    c = input('Enter c: '); 
    if c < a && b == c
        disp(a-b)
    elseif a > b
        disp(a*b)
    elseif c < a || (a+b) < c
        disp(rem(a,b))
    elseif a == b || b == c
        disp(a+b)
    elseif (a+b) == c
        disp(a+b+c)
    else
        disp(ceil(b/c))
    end
repeat = input('Would you like to continue: ');    
end
