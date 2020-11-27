clc
clear all

turkey = load('turkish-se-SP500vsMSCI.csv');

[m,n] = size(turkey) ;
P = 0.10 ;
idx = randperm(m)  ;
train = turkey(idx(1:round(P*m)),:) ; 
test = turkey(idx(round(P*m)+1:end),:) ;

trainx = turkey(:,1);
trainy = turkey(:,2);
trainw = pinv(trainx)*trainy;

trainY = trainw*trainx;
trainy_trainY = trainy - trainY;
trainy_trainY_2 = trainy_trainY.*trainy_trainY;
trainn = length(train);

trainMSE = sum(double(trainy_trainY_2))/trainn;

testx = turkey(:,1);
testy = turkey(:,2);
testw = pinv(testx)*testy;

testY = testw*testx;
testy_testY = testy - testY;
testy_testY_2 = testy_testY.*testy_testY;
testn = length(test);

testMSE = sum(double(testy_testY_2))/testn;

T = table(trainMSE,testMSE)
