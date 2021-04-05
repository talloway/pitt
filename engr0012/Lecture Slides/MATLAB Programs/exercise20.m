func = input('Enter a function: y = ', 's');
str2func(['@(x)', func]);

fplot(func, [-5 5]);
i = 1;
guess = 'y';
while lower(guess) == 'y'
initial_guess = input('Enter a guess for a root: ');
zeroguess(i) = initial_guess;
i = i + 1;
guess = input('Would you like to enter another guess? (y/n)');
end

for j = 1:length(zeroguess) 
zeroes(j) = fzero(func, zeroguess(j));

end
disp(['Roots: ', zeroes]);

mincont = 'y';
disp('Calculate Minima');
while lower(mincont) == 'y'
    k = 1;
    leftx = input('Enter the leftmost x-value');
    rightx = input('Enter the rightmost x-value');
    mins(k) = fminbnd(func, leftx, rightx);
    mincont = input('Would you like to enter another range of x-values? (y/n)');
end

disp('Calculate maxima');
negfunc = @(x)-func(x);
maxcont = 'y';
while lower(maxcont) == 'y'
    l = 1;
    xleft = input('Enter the leftmost x-value');
    xright = input('Enter the rightmost x-value');
    maxs(l) = fminbnd(gfunc, xleft, xright);
    maxcont = input('Would you like to enter another range of x-values? (y/n)');
end

disp('Calculate integral');
for m = 1:length(zeroes)
    x = zeroes(m):0.05:zeroes(m+1);
    y = func(x);
    area(m) = trapz(x,y);
    area1(m) = quad(func, zeroes(m), zeroes(m+1));
    area2(m) = quadl(func, zeroes(m), zeroes(m+1));
end
disp(['Trapezoid: ', area, 'Quad: ',area1, 'Quadl: ',area2]);



