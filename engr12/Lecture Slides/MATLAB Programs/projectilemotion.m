velocity = input('Enter velocity of projectile: ');

for theta=10:90
    velocityx = velocity*cosd(theta);
    velocityy = velocity*sind(theta);
    flighttime = 2*velocityy/9.81;
    xt = flighttime*velocityx;
    yt = velocityy*flighttime - 9.81 * (flighttime)^2/2;
    disp(['Angle: ', num2str(theta), 'Horizontal velocity: ', num2str(velocityx), 'Vertical velocity: ', num2str(velocityy), 'Flight Time: ', num2str(flighttime), 'X Position: ',num2str(xt), 'Y Position: ',num2str(yt)]);

theta = theta + 5;
end
