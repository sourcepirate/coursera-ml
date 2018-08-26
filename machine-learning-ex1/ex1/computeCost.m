function J = computeCost(X, y, theta)
%  From the trainting set X is (n, 2) matrix
%  From the y is supposted to be (y, 1) matrix such that X * theta = y
m = length(y);
J = (1/(2* m)) * sum(power(X*theta - y, 2)); 

end
