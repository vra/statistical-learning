%% Read data 
[sepal_length, sepal_width, petal_length, petal_width, type] = textread('../dataset/bezdekIris.data', '%f,%f,%f,%f,%s');

%% Collocate data into a matrix
dataset = [sepal_length, sepal_width,petal_length, petal_width];

%% Draw plot and add title and labels
boxplot(dataset, 'labels', {'sepal length', 'sepal width', 'petal length', 'petal width'});
title('Distributions of the Four Variables in the Iris Data Set');
xlabel('Data Types');
ylabel('Values (centimeters)');