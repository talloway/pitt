time = 0; 
y = 0.5;
i = 0;
step = 0.1; 

while time <= 0.5

    if (time == 0.5)
        break
    end
  s_one = -2*time*y^2;
  s_two = -2*(time+step)*(y+step*s_one)^2; %(y+step*s_one)-(time+step);
  
  y = y + step*(s_one+s_two)/2;
  disp(["Time = ", num2str(time), ", y = ", num2str(y)]);
  time = time + step;



end

disp(['Final y = ', num2str(y)])