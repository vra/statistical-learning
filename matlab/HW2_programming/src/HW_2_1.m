%%Read data 
[sepal_length, sepal_width, petal_length, petal_width, type] = textread('../dataset/bezdekIris.data', '%f,%f,%f,%f,%s');
data_size = 150;

%% Collocate data into a matrix
dataset = [sepal_length, sepal_width,petal_length, petal_width];
dataset = dataset - repmat(mean(dataset), data_size, 1);

%% Calculate covariance matrix, the correlation coefficient matrix, eigenvalues and eigenvectors
cov_dataset = cov(dataset) * 1/(data_size -1);
corrcoef_dataset = corrcoef(dataset);
[eig_vectors, eig_values] = eig(cov_dataset);

%% Do K-L transform
trans_dataset = dataset * eig_vectors;

%% To verify whether K-L transform is right, calculate covariance matrix of
% transformed dataset
%  cov(trans_dataset)
