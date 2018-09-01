function plotData(X, y)
  postive = find(y == 1);
  negative = find(y == 0);
  plot(X(postive, 1), X(postive, 2), 'k+', X(negative, 1), X(negative, 2), 'ko');
end
