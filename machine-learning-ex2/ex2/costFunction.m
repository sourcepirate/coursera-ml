function [J, grad] = costFunction(theta, X, y)

  m = size(X, 1);
  J = 0;
  grad = zeros(size(theta));

  J = (1 / m) * sum(-y' * log(sigmoid(X * theta)) - (1 - y)' * log(1 - sigmoid(X*theta)));


  for i = 1: size(grad)
    j_sum = (1 / m) * sum((sigmoid(X * theta) - y) .* X(:,i));
    grad(i) = j_sum;

end
