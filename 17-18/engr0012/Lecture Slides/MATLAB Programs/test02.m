v = [0 1 2 3 4];
for k = 1:5
    switch (k - 1)
        case {1,3}
            v(k) = v(k) + v(k+1);
        case {2,4}
            v(k) = new + 1;
        otherwise
            v(k) = k + 1;
    end
    new = v(k)
end
