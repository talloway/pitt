% file checker

function fname = fchecker()

fname = input('Enter file name: ', 's');

while exist(fname) == 0
    fname = input('Incorrect file name or file does not exist. Enter again: ', 's');
end
