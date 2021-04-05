function varargout = welcome(radius)

area = pi * radius^2; 
circumference = 2* pi * radius; 

if nargout > 1 % determines the number of output argument expected by user (NOT DATAMINES)
    
    varargout = {area,circumference}; 
else varargout = {area}; 
end


