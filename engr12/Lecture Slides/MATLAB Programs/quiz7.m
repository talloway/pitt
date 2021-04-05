year = input('F/O/J/S: ','s');
lastyear = input('Had tickets last year (Y/N): ','s');
qpa = input('QPA: ');

if qpa >= 2.0
    iflastyear ~= 'Y' && qpa > 3.0
    switch year
        case 'F'
            points = 135;
        case 'O'
            points = 155;
        case 'J'
            points = 175;
        case 'S'
            points = 195;
    end
    elseif lastyear == 'N' && qpa <= 3.0
    switch year
        case 'F'
            points = 145;
        case 'O'
            points = 160;
        otherwise
            points = 185;
    end
    else
    switch year
        case 'F'
            points = 125;
        case 'S'
            points = 250;
        otherwise
            points = 240;
    end
    end
else
    if year == 'S'
        points = 105;
    else
        points = 115;
    end
end
    disp(points)