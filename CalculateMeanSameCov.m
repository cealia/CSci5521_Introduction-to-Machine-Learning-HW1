%%
% The CalculateMeanSameCov function finds the mean of each class and
%  shared covariance
%
% The parameters received are:
% - X (n x m): n is the number of samples, and m the number of features
% - y (n x 1): Vector that should contain the labels 1 or 2 for each sample
% - prior1 (1 x 1): Prior for class 1 (between 0 and 1)
% - prior2 (1 x 1): Prior for class 2 (between 0 and 1)
%
% The function should return:
% - m1 (m x 1): Mean for class 1. 
% - m2 (m x 1): Mean for class 2. 
% - S2 (m x m): Shared covariance. 
%
% You should be able to test the function by executing:
% [m1,m2,S] = CalculateMeanSameCov(X_trn, y_trn, 0.9, 0.1)
%
function [m1,m2,S] = CalculateMeanSameCov(X, y, prior1, prior2)
%%%% YOUR CODE STARTS HERE
for i=1:2
loction=find(y(:,1)==i);
%loction
m(i,:)=mean(X(loction,[1:8]));
if (i==1)
    S1 = cov(X(loction,[1:8])); % 8 8
end
if (i==2)
    S2 = cov(X(loction,[1:8])); % 8 8
end
end

S = prior1*S1 + prior2*S2; % 8 8
m1 = m(1,:)'; % 8 1
m2 = m(2,:)'; % 8 1

% g1 = CalculateGaussianDiscr(X, m1, S, prior1)
% g2 = CalculateGaussianDiscr(X, m2, S, prior2)
% error_rate = CalculateErrorRate(g1, g2, y)
%%%%
end

