%% Machine Learning Online Class
%  Exercise 1: Linear regression with multiple variables



%% ================ Part 1: Feature Normalization ================

%% Clear and Close Figures
clear ; close all; clc

fprintf('Loading data ...\n');

%% Load Data
data = csvread('data_new.csv');
X = data(2:size(data,1), 2:5);
y = data(2:size(data,1),1);
m = length(y);

N = 4;
% Print out some data points
fprintf('First 10 examples from the dataset: \n');
for i = 1:10
    fprintf(' x = [%.3f %.3f %.3f %.3f] \n y = %.2f \n', [X(i,:) y(i)]);
end

fprintf('Program paused. Press enter to continue.\n');
pause;

% Scale features and set them to zero mean
fprintf('Normalizing Features ...\n');

[X mu sigma] = featureNormalize(X);

% Add intercept term to X
X = [ones(m, 1) X];



%% ================ Part 2: Gradient Descent ================

pause;

fprintf('Running gradient descent ...\n');

% Choose some alpha value
alpha = 0.1;  % this seems to be the biggest you can go with alpha
num_iters = 50;

% Init Theta and Run Gradient Descent 
theta = zeros(N+1, 1);
[theta, J_history] = runGradientDescentMulti(X, y, theta, alpha, num_iters);
% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');
pause;

% Display gradient descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf(' %f \n', theta);
fprintf('\n');
pause;



% % % Estimate the price of a 1050 sq-ft, 3 br house
% % ====================== YOUR CODE HERE ======================
% % Recall that the first column of X is all-ones. Thus, it does
% % not need to be normalized.
% % price = 0; % You should change this
% prediction = [1 ((1250 - mu(:,1))/sigma(:,1)) ((3 - mu(:,2))/sigma(:,2))];
% price = prediction * theta;
% 
% 
% % ============================================================
% 
% fprintf(['Predicted price of a 1250 sq-ft, 3 br condo ' ...
%          '(using gradient descent):\n $%f\n'], price);
% 
% fprintf('Program paused. Press enter to continue.\n');
% pause;



%% ================ Part 3: Normal Equations ================

fprintf('Solving with normal equations...\n');

% ====================== YOUR CODE HERE ======================
% Instructions: The following code computes the closed form 
%               solution for linear regression using the normal
%               equations. You should complete the code in 
%               normalEqn.m
%
%               After doing so, you should complete this code 
%               to predict the price of a 1650 sq-ft, 3 br house.
%

%% Load Data
data = csvread('data_new.csv');
X = data(2:size(data,1),2:5);
y = data(2:size(data,1),1);
m = length(y);

% Add intercept term to X
X = [ones(m, 1) X];

% Calculate the parameters from the normal equation
theta = normalEquation(X, y);

% Display normal equation's result
fprintf('Theta computed from the normal equations: \n');
fprintf(' %f \n', theta);
fprintf('\n');
pause;
