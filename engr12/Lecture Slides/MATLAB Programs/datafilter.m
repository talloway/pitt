a = [1 2 3 4 0 -45 -6 0];

count=1;
for i=1:length(a)
    if a(i) > 0
        b(count)=a(i);
    count = count + 1;
    end
end
disp(b);
