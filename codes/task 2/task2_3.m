clc
clear all

mtcardata = load('mtcarsdata.csv');
%c 1 and 4
n = length(mtcardata(:,1));

y = mtcardata(:,1);
x = mtcardata(:,4);

x_mean = sum(double(mtcardata(:,4)))/n;
y_mean = sum(double(mtcardata(:,1)))/n;

x_xbar = mtcardata(:,4)-x_mean;
y_ybar = mtcardata(:,1)-y_mean;
x_xbar2 = x_xbar.*x_xbar;
xy_2 = x_xbar.*y_ybar;  % (x-xbar)*(y-ybar)

numerator = sum(double(xy_2(:,1)));
denominator = sum(double(x_xbar2(:,1)));

slope = numerator/denominator;

c = y_mean-(slope*x_mean);

Y = slope*x+c;

plot(x,y,'*')
hold on;
plot(x,Y,'-r')
title('Linear regression for mtcardata data');
xlabel('Independent values');
ylabel('Dependent coordinates');



