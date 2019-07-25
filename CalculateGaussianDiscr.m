%%
% The CalculateGaussianDiscr function finds the discriminant value for each
% sample x in the test set
%
% The parameters received are:
% - X (n x m): n is the number of samples, and m the number of features
% - m (m x 1): Mean
% - S (m x m): Covariance
% - prior (1 x 1): Prior
%
% The function should return:
% - g (n x 1): Discriminant calculated using m, S and prior for each sample. 
%
% You should be able to test the function by executing:
% g = CalculateGaussianDiscr(X_tst, m1, S1, prior1)
%
function g = CalculateGaussianDiscr(X, m, S, prior)
%%%% YOUR CODE STARTS HERE
% T = [1,2,3; 4,5,6]
% ss = size(T)

% A(1,:) ¦C
% A¡]¡G,1¡^
g = [];
for i=1:100
%size(X)
x = X(i,:);
x = x';
%x
% i
% size(x)
g_item = -1/2*log(det(S)) -1/2*(x-m)'*inv(S)*(x-m) + log(prior);
g = [g;g_item];
end

%%%%
end

