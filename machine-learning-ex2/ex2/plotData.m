function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
a = gscatter(X(:, 1), X(:, 2), y, 'k', 'o+');
set(a(1), 'MarkerFaceColor', 'y', 'MarkerSize', 7);
set(a(2), 'LineWidth', 2, 'MarkerSize', 7);

% =========================================================================
end
