# linear regression

# Introduction
Linear Regression is a statistical supervised learning technique to predict the quantitative variable by
forming a linear relationship with one or more independent features. It helps determine:
  - If a independent variable does a good job in predicting the dependent variable. independent variable
plays a significant role in predicting the dependent variable.

# Task 2 : Fit a linear regression model
  - One dimensional problem without intercept of Turkish stock exchange data. The basic equation for
a line with slope and intercept is used for this task.But,as per instructions intercept is set to zero i.e the
equation reduces to y = m*x From equation and the data x is taken as first column and y is taken as
second column and the below result is obtained
  - The slope obtained in the above task is 0.6339.Compare graphically the solution obtained on different
random subsets (10 percent) of the whole data set The graph obtained by performing this task we get the graph. First graph is with the points and lines for the second graph only lines are shown for clarity.
  - From the above graph we can see that each result of a random subset has a different slope but all of
them has same intercept i.e, zero.One-dimensional problem with intercept on the Motor Trends car data,
using columns mpg and weight
  - The graph is the result of the task 2.3 from which we get the value of slope as -5.3445 and the
intercept of the line is 37.2851.
  - Multi-dimensional problem on the complete MT cars data, using all four columns (predict mpg with
the other three columns)
  - For the multi dimensional problem the results are shown in the above table which shows the predicted
values of mpg, target values and error value.

# Task 3 : Test regression model
  - In this task the data is split in to random subsets as 10The objective function is calculated in this
task.This is mean squared error. It tends to amplify the impact of outliers on the model’s accuracy. For
the linear regression data the objective function value is calculated by using
  - For the multiple linear regression data the objective function value is calculated by using
  - For the testing and training of the data the mat lab codes are named as task31.m, task33.m, task34.m
For the last task i.e, Repeat for different training-test random splits.A mat lab code is made named test.m
and in the code in order to choose change the value of task as required i.e, chose values from 1,3 and 4.The
test.m script runs one of the three functions named task1,task3 and task4. The following figure shows the
values of MSE task 4 for a random set repeated for 10 times.
