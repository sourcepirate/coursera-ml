function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
sim = 0;

abs_x = x1 - x2;
 

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%

% |a - ai| = (a1-ai1)x + (a2 - ai2) ..... => sum((a1-ai1)^2 + (a2 -ai2)^2 ...) 
meaned = - (sum(abs_x .^ 2) / (2 * sigma .^ 2));

sim = exp(meaned);




% =============================================================
    
end
