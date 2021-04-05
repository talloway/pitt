x = 5
y = -1
z = [-2 4 7 -3 1];
[a,b] = confuse1(x,y,z)
[a,b] = confuse2(x,y,z)

function [c,d] = confuse1(x,y,z)
c = 2*x
for i = 1:2:5
    d = 3 + z(i)
end
end

function [x,y] = confuse2(y,x,k)
for i = 1:3:5
    new = confuse3(i,k);
    if i <= 2
        y = y +k(i)
    else
        x = x - k(i)
    end
end
end

function new = confuse3(v,k)
switch(v)
    case {1,3}
        new = k(v) + k(v+1)
    case {2,4}
        new = 2*v+k(v)
    otherwise
        new = k(v)-k(v-1)
end
end