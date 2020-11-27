clc
clear all

turkey = load('turkish-se-SP500vsMSCI.csv');

n = length(turkey(:,1));
k = round(n*0.1);

figure;
for i = 1:10
    data(:,:) = datasample(turkey,k)
    x = data(:,1);
    y = data(:,2);
    w = pinv(x)*y;
    Y = w*x;

    hold on;
    plot(x,y,'.')
    hold on;
    plot(x,Y,'-')
    title('Linear regression for turkey data');
    xlabel('Independent values');
    ylabel('Dependent coordinates');
end


