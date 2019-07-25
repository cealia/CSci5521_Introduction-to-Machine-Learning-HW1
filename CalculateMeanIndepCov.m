%%
% The CalculateMeanIndepCov function finds the mean and covariance of each
% class assuming independent covariance
%
% The parameters received are:
% - X (n x m): n is the number of samples, and m the number of features
% - y (n x 1): Vector that should contain the labels 1 or 2 for each sample
%
% The function should return:
% - m1 (m x 1): Mean for class 1. 
% - m2 (m x 1): Mean for class 2. 
% - S1 (m x m): Covariance for class 1. 
% - S2 (m x m): Covariance for class 2. 
%
% You should be able to test the function by executing:
% [m1,m2,S1,S2] = CalculateMeanIndepCov(X_trn, y_trn)
%
function [m1,m2,S1,S2] = CalculateMeanIndepCov(X, y)
%%%% YOUR CODE STARTS HERE
for i=1:2
loction=find(y(:,1)==i);
%loction
m(i,:)=mean(X(loction,[1:8]));
%size(X(loction,[1:8]))
if (i==1)
    S1 = cov(X(loction,[1:8])); % 8 8
end
if (i==2)
    S2 = cov(X(loction,[1:8])); % 8 8
end
end



m1 = m(1,:)'; % 8 1
m2 = m(2,:)'; % 8 1



%%%%
end

