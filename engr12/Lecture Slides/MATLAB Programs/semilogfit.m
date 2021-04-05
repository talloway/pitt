function semilogfit(x,y)
j = 0;
for i = 1:length(y)
    if y(i) > 0 
        xnew(j) = x(i);
        ynew(j) = y(i);
        j = j + 1;
    end
end
hold on
plot(x,y, 'k.');
plot(xnew, log(ynew), 'b');
xlabel('Independent Variable');
ylabel('Dependent Variable');
title('Semi-log Fit');
end
