% Created by Avery Peiffer
% Group L03
% 3/1/2018
header()
[plotcolor, plotsymbol, curvecolor] = graphchoices();

loadedfile = loadfile();
plotdata(loadedfile);

choice = menu('What type of fit would you like to use?', 'Linear', 'Polynomial', 'Cubic Spline', 'Semi-log', 'Log-log');
x = loadedfile(:,1);
y = loadedfile(:,2);
switch choice
    case 1
        linearfit(x,y);
    case 2
        polynomialfit(x,y);
    case 3
        cubicsplinefit(x,y);
    case 4
        semilogfit(x,y);
    case 5
        loglogfit(x,y);
end
