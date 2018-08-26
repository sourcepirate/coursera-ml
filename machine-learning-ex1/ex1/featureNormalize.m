function [X_norm, mu, sigma] = featureNormalize(X)

X_norm = X;
x_len = size(X_norm, 2);

mu = mean(X_norm);
sigma = std(X_norm);

for i = 1: x_len
   X_norm(:, i) = (X(:, i) - mu(i)) / sigma(i);
end

end
