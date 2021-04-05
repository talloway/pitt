function [avgx, stdevx, avgy, stdevy] = analysis(x, y)
avgx = mean(x);
stdevx = std(x);
avgy = mean(y);
stdevy = std(y);
end
