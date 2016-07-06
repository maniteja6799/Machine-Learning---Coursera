function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
for iter = 1:num_iters
    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    hxy= (X*theta-y);
    
    tempTheta =theta;
    for in= 1:length(theta)
        step =0;
        for j=1:m
            step= step + hxy(j,1)*X(j,in);
        end
        tempTheta(in,1)= theta(in,1)- (alpha /m )*(step);
    end
    theta= tempTheta;
    % ============================================================
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
end

end
