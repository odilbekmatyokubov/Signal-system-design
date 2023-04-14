% first exercise
% Read sales figures from file
salesData = readtable('sales_figures.csv');
% Extract sales figures for divisions A and B
divisionA = salesData.A;
divisionB = salesData.B;
% Create a bar plot of sales figures
bar([divisionA, divisionB]);
xlabel('Division');
ylabel('Sales');
legend('Division A', 'Division B');
title('ABC Corporation Sales Figures');

%%%%%%%%%%

% second exercise
% Define the parameters of the periodic signal
f = 1; % Frequency of the signal in Hz
T = 1/f; % Period of the signal in seconds
t = 0:0.01:T-0.01; % Time vector for one period
% Create the signal
x = square(2*pi*f*t);
% Plot the signal
stem(t,x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Discrete Waveform of a Periodic Signal');

%%%%%%%%%%%

% third exercise
% Define time range
t = 0:0.1:5;
% Define growth and decay rates
a = 0.5; % growth rate
b = -0.5; % decay rate
% Compute growing and decaying exponentials
y1 = exp(a*t);
y2 = exp(b*t);
% Plot results
figure;
plot(t, y1, 'r-', t, y2, 'b--');
xlabel('Time');
ylabel('Magnitude');
legend('Growing Exponential', 'Decaying Exponential');
title('Comparison of Growing and Decaying Exponentials');

%%%%%%%%%%

% fourth exercise
% Define the sampling interval and time vector
fs = 1000; % Sampling frequency (Hz)
t = 0:1/fs:3-1/fs; % Time vector (3 seconds long)
% Define the rectangular pulse for v1
v1 = rectpuls(t, 0.1); % Pulse width of 0.1 seconds
% Define the rectangular pulse for v2
v2 = rectpuls(t-1, 0.1); % Pulse width of 0.1 seconds, shifted by 1 second
% Define the rectangular pulse for v1-v2
vdiff = v1 - v2;
% Create the plot
figure;
subplot(3,1,1);
plot(t, v1);
title('v1 Rectangular Pulse');
subplot(3,1,2);
plot(t, v2);
title('v2 Rectangular Pulse');
subplot(3,1,3);
plot(t, vdiff);
title('v1-v2 Rectangular Pulse');
xlabel('Time (s)');

%%%%%%%%%%

% fifth exercise 
% Define the ramp function
t = -5:0.01:5;
ramp = t.*(t>=0);
% Define the step function
step = ones(size(t));
% Merge the functions using row-wise concatenation
merged = [step ramp];
% Plot the functions
plot(t, ramp, 'LineWidth', 2);
hold on;
plot(t, step, 'LineWidth', 2);
plot(t, merged, 'LineWidth', 2);
legend('Ramp Function', 'Step Function', 'Merged Function');
xlabel('Time (s)');
ylabel('Amplitude');
title('Visualization of Ramp and Step Functions');

