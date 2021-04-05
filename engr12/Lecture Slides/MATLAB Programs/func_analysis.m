% Functional Analysis

clear all;
clc;

fh = @(x)sin(x)./(x.^2+1);

xguess = [-10 -7 -3 -1 3 5 9];

for i = 1:length(xguess)
    xroot(i) = fzero(fh, xguess(i));
end

xmin = fminbnd(fh, -10, 10);
ymin=fh(xmin);

gh = @(x) -fh(x);
fmax = fh(fminbnd(g, -10, 10)); % Minimum of g is the maximum of f

% Integral 
x = xroot(1):0.01:xroot(2); % Smaller step size makes it more accurate
y = fh(x);
area = trapz(x, y);
area1 = quad(fh, xroot(1), xroot(2));
area2 = quadl(fh, xroot(1), xroot(2));

% Derivative
x = [-9 -9.0001];
y = fh(x);






