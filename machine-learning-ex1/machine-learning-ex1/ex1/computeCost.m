function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples
m2= 2*m;
% You need to return the following variables correctly 
J = 0;
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
hxy2= (X*theta-y).^2;
for in=1:m
    J= J+ hxy2(in,1);
end
J=J/m2;
fprintf('Cost is %.2f\n',J);
% =========================================================================
end
