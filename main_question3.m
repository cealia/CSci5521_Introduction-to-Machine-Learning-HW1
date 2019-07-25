prior1 = 0.1;
prior2 = 0.9;

% read data: call ReadData
%%%% YOUR CODE STARTS HERE
[X_trn, y_trn, X_tst, y_tst] = ReadData('training_data.txt', 'test_data.txt');
%%%
%% Case 1: Independent Covariance

% find parameters: call CalculateMeanIndepCov using the training set to
% learn Gaussian parameters
%%%% YOUR CODE STARTS HERE
[m1,m2,S1,S2] = CalculateMeanIndepCov(X_trn, y_trn);
%%%%

% calculate discriminant: call CalculateGaussianDiscr using the test set
% and the parameters learned previously. You should call
% CalculateGaussianDiscr once per class
%%%% YOUR CODE STARTS HERE
g1 = CalculateGaussianDiscr(X_tst, m1, S1, prior1);
g2 = CalculateGaussianDiscr(X_tst, m2, S2, prior2);
%%%%

% calculate error rate: call CalculateErrorRate using g1 and g2
%%%% YOUR CODE STARTS HERE
error_rate = CalculateErrorRate(g1, g2, y_tst);
%%%%
disp(strcat("Independent Covariance: ", num2str(error_rate,3)));

%% Case 2: Shared Covariance

% find parameters: call CalculateMeanSameCov using the training set to
% learn Gaussian parameters
%%%% YOUR CODE STARTS HERE
[m1_2,m2_2,S] = CalculateMeanSameCov(X_trn, y_trn, prior1, prior2);
%%%%

% calculate discriminant: call CalculateGaussianDiscr using the test set
% and the parameters learned previously. You should call
% CalculateGaussianDiscr once per class
%%%% YOUR CODE STARTS HERE
g1_2 = CalculateGaussianDiscr(X_tst, m1_2, S, prior1);
g2_2 = CalculateGaussianDiscr(X_tst, m2_2, S, prior2);
%%%%

% calculate error rate: call CalculateErrorRate using g1 and g2
%%%% YOUR CODE STARTS HERE
error_rate_2 = CalculateErrorRate(g1_2, g2_2, y_tst);
%%%%
disp(strcat("Shared Covariance: ", num2str(error_rate_2,3)));
