%   matlabExercise13 - Modular design

%   Author: A. Mahboobin
%   Date: February 2017

%load data set
filename=input('Please enter filename: ','s');
data=matlabExercise13LoadData(filename);%load data
%extract information: first row = x, second row = y
[r,c]=size(data);
if r > c
    data=data';
end
x=data(1,:);
y=data(2,:);
%plot data
figure,
h=plot(x,y,'ok');hold on
%change x-axis limits
xlim([0 9]);
%change y-axis limits
ylim([0.5 3]);
%set marker properties
set(h,'MarkerSize',12,'MarkerFaceColor','k','MarkerEdgeColor','k');
%apply figure cosmetics
set(gca,'FontWeight','Bold','FontSize',18,'LineWidth',2);
%x-axis label
xlabel('x-data','FontWeight','Bold','FontSize',18);
%y-axis label
ylabel('y-data','FontWeight','Bold','FontSize',18);
%figure title
title('Plot of x versus y','FontWeight','Bold','FontSize',18);
%fit different polynomials to data
n=[2 3 4 7];%polynomial orders
lineColor={'b','r','k','g','c'};
xNew=0.5:0.1:8.5;%new x vector for plotting purposes
for ii=1:length(n)
    coeff = matlabExercise13FitPoly(x, y, n(ii));
    %n-th order polynomial
    %evaluate equation at xNew
    yHat=polyval(coeff,xNew);
    %plot line
    plot(xNew,yHat,lineColor{ii},'linewidth',4);
end
%apply figure legend
g=legend('data','n=2','n=3','n=4','n=7');
set(g,'Box','Off');%set legend properties