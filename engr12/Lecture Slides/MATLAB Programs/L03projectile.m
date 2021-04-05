
velocity = input('Enter velocity of projectile: ');
grav = 9.81;

longxpos = velocity*cosd(45)*(2*velocity*sind(45)/grav);
longypos = velocity*(velocity/grav);



hold on
for angle = 5:5:85
horzvel = velocity * cosd(angle);
vertvel = velocity * sind(angle);
flttime = 2*vertvel/grav;
times = linspace(0, flttime, 300);
for i = 1:length(times)
    yvals(i) = vertvel*times(i) - (0.5*grav*(times(i))^2);
end

xpos = horzvel*flttime;
x = linspace(0, xpos, 300);


    
plot(x, yvals, 'color', rand(1,3))
xlim([0 1.05*longxpos]);
ylim([0 1.05*longypos/2]);

pause(2);
end

hold off

% pause(2);
% choice = menu('Would you like to run again?','Yes','No');

% if choice == 1 || choice == 2
%     web('https://www.youtube.com/watch?v=dQw4w9WgXcQ', '-browser')
% end
