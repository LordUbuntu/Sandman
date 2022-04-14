# function [theta, J_history] = runGradientDescentMulti(X, y, theta, alpha, num_iters)
# m = length(y); % number of training examples
# J_history = zeros(num_iters, 1);
# 
# temp = zeros(size(theta, 1), 1); 
# for j = 1:size(theta, 1)
# temp(j) = theta(j) - (alpha / m) * sum((X * theta - y) .* X(:, j));
# endfor
# theta = temp;
# theta = theta - alpha * (1 / m) * (X' * ((X * theta) - y));
# J_history(iter) = computeCostMulti(X, y, theta);
# end

function [theta, J_history] = runGradientDescentMulti(X, y, theta, alpha, num_iters)
  m = length(y); % number of training examples
  J_history = zeros(num_iters, 1);

  for iter = 1:num_iters
    theta = theta - alpha * (1/m) * (X' * ((X * theta) - y));
    J_history(iter) = computeCostMulti(X, y, theta);
  end
end
