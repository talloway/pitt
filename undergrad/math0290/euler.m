time = 0;
step = 1;
y = 1;
i = 1;


while time <= 4
   
   times(i) = time;
   separatey(i) = y;
   %disp(i);
   i = i + 1;
   %disp(['y = ', num2str(y)]);
   %disp(['t = ', num2str(time)]);
   functy = y*cos(2*time);
   %disp(['f(t,y) = ', num2str(functy)])
   functyh = functy * step;
   %disp(['f(t, y)h = ', num2str(functyh)]);
   y = y + functyh;
    %disp(['y = ', num2str(y)]);
   
   
   time = time + step;
   if (i == (2/step))
       disp(i);
       disp([newline, 'Final y = ', num2str(y)]);
       break
   end
end

disp(num2str(times));
plot(times, separatey);

