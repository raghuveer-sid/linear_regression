clc
clear all

turkey = load('turkish-se-SP500vsMSCI.csv');

x = turkey(:,1);
y = turkey(:,2);

w = pinv(x)*y;

Y = w*x;

plot(x,y,'*')
hold on;
plot(x,Y,'-r')
title('Linear regression for turkey data');
xlabel('Independent values');
ylabel('Dependent coordinates');



