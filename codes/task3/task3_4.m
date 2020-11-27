clc
clear all

mtcardata = load('mtcarsdata.csv');

[m,n] = size(mtcardata) ;
P = 0.10 ;
idx = randperm(m)  ;
train = mtcardata(idx(1:round(P*m)),:);
test = mtcardata(idx(round(P*m)+1:end),:); 

%train
[R,S] = size(train);
trainy = train(:,1);
trainx0 = ones(R,1);
trainx = train(:,2:end);
trainX = [trainx0 trainx];
trainw = pinv(trainX)*trainy;

trainY = trainX*trainw;

trainMSE = 0.5*(norm(trainX*trainw))^2 - (transpose(trainw)*transpose(trainX)*trainy) + 0.5* (norm(trainy)^2);

% test

[r,s] = size(test);
testy = test(:,1);
testx0 = ones(r,1);
testx = test(:,2:end);
testX = [testx0 testx];
testw = pinv(testX)*testy;

testY = testX*testw;

testMSE = 0.5*(norm(testX*testw))^2 - (transpose(testw)*transpose(testX)*testy) + 0.5* (norm(testy)^2);

T = table(trainMSE,testMSE)

