clc
clear all

mtcardata = load('mtcarsdata.csv');

n = length(mtcardata(:,1));

y = mtcardata(:,1);
x0 = ones(32,1);
x = mtcardata(:,2:end);
X = [x0 x];
w = pinv(X)*y;

Y = X*w;
error = abs(y-Y);

data = [Y y error];

col = {'Predicted values','Target values','error'};
uitable('Columnname',col,'Data',data,'Position',[200 20 265 630]);




