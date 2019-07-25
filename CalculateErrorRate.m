%%
% The CalculateErrorRate function calculates the error rate using the
% discriminant values
%
% The parameters received are:
% - g1 (n x 1): Discriminant for class 1, where n is the number of samples
% in the test set.
% - g2 (n x 1): Discriminant for class 2
% - y_tst (n x 1): Vector that should contain the true labels 1 or 2 for
% each sample in the test set.
%
% The function should return:
% - error_rate (1 x 1): The error rate, between 0 and 1
%
% You should be able to test the function by executing:
% error_rate = CalculateErrorRate(g1, g2, y_tst)
%
function error_rate = CalculateErrorRate(g1, g2, y_tst)
%%%% YOUR CODE STARTS HERE
error = 0;

for i=1:length(y_tst)
% g1(i,:)
% g2(i,:)
if (g1(i,:)>g2(i,:))
    if (y_tst(i,:)==2)
        error = error+1;
    end
end

if (g1(i,:)<g2(i,:))
    if (y_tst(i,:)==1)
        error = error+1;
    end
end

end

% error
error_rate = error/length(y_tst);
%%%%
end

