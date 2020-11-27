clc
clear all

mtcardata = load('mtcarsdata.csv');

turkey = load('turkish-se-SP500vsMSCI.csv');

% choose the task you want to test repeatedly options are : 1,3,4.

task = 1;

if task == 1
    
    T = [];

    for i = 1:10
        [trainMSE,testMSE] = task1(turkey);
        T = [T;[trainMSE,testMSE]];
    end

    col = {'trainMSE values','testMSE values'};
    uitable('Columnname',col,'Data',T,'Position',[200 20 210 210]);
    
elseif task == 3
    
    T = [];

    for i = 1:10
        [trainMSE,testMSE] = task3(mtcardata);
        T = [T;[trainMSE,testMSE]];
    end

    col = {'trainMSE values','testMSE values'};
    uitable('Columnname',col,'Data',T,'Position',[200 20 210 210]);
elseif task == 4
    
    T = [];

    for i = 1:10
        [trainMSE,testMSE] = task4(mtcardata);
        T = [T;[trainMSE,testMSE]];
    end

    col = {'trainMSE values','testMSE values'};
    uitable('Columnname',col,'Data',T,'Position',[200 20 210 210]);
else
    disp('please select a right task');
end
