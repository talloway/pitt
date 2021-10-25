function varargout = circlearea(radius)

area = pi*radius^2;
cir = 2 * pi * radius;

if nargout > 1 % number of output variables used to invoke function
    varargout = {area, cir};
else
    varargout = {area};

end

