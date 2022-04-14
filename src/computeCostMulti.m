function J = computeCostMulti(X, y, theta)
  m = length(y);
  J = 0;
  J = (1 / (2 * m)) * sumsq(X * theta - y);
end
