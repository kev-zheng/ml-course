function [error_train, error_val] = ...
    randomCurve(X, y, Xval, yval, lambda, num_iterations)
%RANDOMCURVE Generates the train and cross validation set errors needed 
%to plot a learning curve using randomly selected examples
%   [error_train, error_val] = ...
%       RANDOMCURVE(X, y, Xval, yval, lambda) returns the train and
%       cross validation set errors for a learning curve. In particular, 
%       it returns two vectors of the same length - error_train and 
%       error_val. Then, error_train(i) contains the training error for
%       i examples (and similarly for error_val(i)).

% Number of training examples
m = size(X, 1);
m_val = size(Xval, 1);

error_train = zeros(m, 1);
error_val = zeros(m, 1);

for i = 1:m
avg_train = 0;
avg_val = 0;
 for n = 1:num_iterations
    % Train error
    index = randsample(m, i);
    Xrand = X(index, :);
    yrand = y(index);
    
    theta = trainLinearReg(Xrand, yrand, lambda);

    avg_train = avg_train + linearRegCostFunction(Xrand, yrand, theta, 0);
    
    index = randsample(m_val, i);
    Xval_rand = Xval(index, :);
    yval_rand = yval(index);
    avg_val = avg_val + linearRegCostFunction(Xval_rand, yval_rand, theta, 0);
 end
error_train(i) = avg_train / num_iterations;
error_val(i) = avg_val / num_iterations;
end

