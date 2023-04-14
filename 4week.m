% first exercise
% Prompt the user for a length and units
length = input('Enter the length: ');
units = input('Enter the units: ', 's');
% Print the length and units
fprintf('Length: %d %s\n', length, units);

%%%%%%%%%%%%%

% second exercise
% Generate  data
x = linspace(0, 2*pi, 100);
y1 = sin(x);
y2 = cos(x);
% 1 plot
figure;
plot(x, y1, 'r');
xlabel('x');
ylabel('sin(x)');
title('Plot 1');
% 2 plot
figure;
plot(x, y2, 'b');
xlabel('x');
ylabel('cos(x)');
title('Plot 2');

%%%%%%%%%%%%%%%%%%

% third exercise
% Define the range of x values
x = 0:0.1:10;
% Calculate exp(x) and log(x) for the range of x values
y_exp = exp(x);
y_log = log(x);
% Plot exp(x) and log(x) on one graph
figure;
plot(x, y_exp, 'r', x, y_log, 'b');
title('Exponential and Logarithmic Functions');
xlabel('x');
ylabel('y');
legend('exp(x)', 'log(x)');

%%%%%%%%%%%%%

% fourth exercise
% Define variables
principal = 1000; % initial investment
interest_rate = 0.05; % annual interest rate
n_years = 10; % number of years
n_months = n_years * 12; % number of months
deposits = [0, 100, 200, 300, 400, 500]; % different monthly deposits
% Calculate value of account for each monthly deposit
for i = 1:length(deposits)
    deposit = deposits(i);
    monthly_rate = interest_rate / 12;
    value = principal;
    for j = 1:n_months
        value = value + deposit;
        interest = value * monthly_rate;
        value = value + interest;
    end
    fprintf('Value of account after 10 years with $%d monthly deposit: $%.2f\n', deposit, value);
end
