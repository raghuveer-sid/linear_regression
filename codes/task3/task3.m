function [trainMSE,testMSE] = task3(mtcardata)
[m,n] = size(mtcardata) ;
P = 0.10 ;
idx = randperm(m)  ;
train = mtcardata(idx(1:round(P*m)),:) ; 
test = mtcardata(idx(round(P*m)+1:end),:) ;

% training data 10% cause 5% data is too small

trainn = length(train);

trainx = train(:,4);
trainy = train(:,1);

trainx_mean = sum(double(train(:,4)))/trainn;
trainy_mean = sum(double(train(:,1)))/trainn;

trainx_xbar = train(:,4)-trainx_mean;
trainy_ybar = train(:,1)-trainy_mean;
trainx_xbar2 = trainx_xbar.*trainx_xbar;
trainxy_2 = trainx_xbar.*trainy_ybar;  % (x-xbar)*(y-ybar)

trainnumerator = sum(double(trainxy_2(:,1)));
traindenominator = sum(double(trainx_xbar2(:,1)));

trainslope = trainnumerator/traindenominator;

trainc = trainy_mean-(trainslope*trainx_mean);

trainY = trainslope*trainx+trainc;

trainy_Y = trainy - trainY;
trainy_Y2 = trainy_Y.*trainy_Y;

trainMSE = sum(double(trainy_Y2))/trainn;

% test data 90%

testn = length(test);

testy = test(:,1);
testx = test(:,4);

testx_mean = sum(double(test(:,4)))/testn;
testy_mean = sum(double(test(:,1)))/testn;

testx_xbar = test(:,4)-testx_mean;
testy_ybar = test(:,1)-testy_mean;
testx_xbar2 = testx_xbar.*testx_xbar;
testxy_2 = testx_xbar.*testy_ybar;  % (x-xbar)*(y-ybar)

testnumerator = sum(double(testxy_2(:,1)));
testdenominator = sum(double(testx_xbar2(:,1)));

testslope = testnumerator/testdenominator;

testc = testy_mean-(testslope*testx_mean);

testY = testslope*testx+testc;

testy_Y = testy - testY;
testy_Y2 = testy_Y.*testy_Y;

testMSE = sum(double(testy_Y2))/testn;

T = table(trainMSE,testMSE)
end

