function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

positive = [];
negative = [];
len = length(X(:,1))
for i = 1:len
  for j = 1:2
    if X(i,j) < 0
      negative(end+1) = X(i,j)
    else
      positive(end+1) = X(i,j)
    endif
  endfor
endfor

scatter(positive, y, '+')
scatter(negative, y, 'o')







% =========================================================================



hold off;

end
