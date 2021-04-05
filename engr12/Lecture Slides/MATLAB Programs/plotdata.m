function plotdata(loadedfile)

x = loadedfile(:,1);
y = loadedfile(:,2);

subplot(2,2,1)
plot(x,y);

subplot(2,2,2)
plot(x, log(y));

subplot(2,2,3)
plot(log(x),log(y));

end