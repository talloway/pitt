function [loadedfile] = loadfile()
filename = input('Enter the name of a data file: ');
loadedfile = load(filename);
[rows, cols] = size(loadedfile);
if rows > cols
    loadedfile = transpose(loadedfile);
end


end
