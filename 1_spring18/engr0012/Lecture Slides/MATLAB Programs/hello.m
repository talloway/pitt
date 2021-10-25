function varargout = hello(count)

if nargout == 1
    varargout{1} = 0;
elseif nargout == 2
    varargout{1} = 'Hello';
    varargout{2} = 'Hi';
elseif nargout == 3
    varargout{1} = 'Hi';
    varargout{2} = 'Hello';
    varargout{3} = 'There';
end
