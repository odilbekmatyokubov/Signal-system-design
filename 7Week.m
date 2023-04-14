% first exercise
% Define the time range and sampling interval
t = -10:0.01:10;
% Define the original continuous-time signal
x = sin(t);
% Plot the original continuous-time signal
plot(t, x);
xlabel('Time');
ylabel('Amplitude');
title('Original Continuous-Time Signal');

% Define the time range and sampling interval
t = -10:0.01:10;
% Define the original continuous-time signal
x = sin(t);
% Define the time shift amount
t_shift = 2;
% Create the time-shifted signal
x_shift = sin(t - t_shift);
% Plot the time-shifted signal
plot(t, x_shift);
xlabel('Time');
ylabel('Amplitude');
title('Time-Shifted Continuous-Time Signal');

% Define the time range and sampling interval
t = -10:0.01:10;
% Define the original continuous-time signal
x = sin(t);
% Create the reversed signal
x_reversed = fliplr(x);
% Plot the reversed signal
plot(t, x_reversed);
xlabel('Time');
ylabel('Amplitude');
title('Reversed Continuous-Time Signal');

% Define the time range and sampling interval
t = -10:0.01:10;
% Define the original continuous-time signal
x = sin(t);
% Define the scaling factor
a = 2;
% Create the scaled signal
x_scaled = a*sin(t);
% Plot the scaled signal
plot(t, x_scaled);
xlabel('Time');
ylabel('Amplitude');
title('Scaled Continuous-Time Signal');


% second exercise
% Define the original signal
n = 0:10;
x = [1 2 3 4 5 6 7 8 9 10 11];
% Plot the original signal
stem(n, x)
title('Original Discrete-Time Signal')
xlabel('n')
ylabel('x[n]')

% Define the original signal
n = 0:10;
x = [1 2 3 4 5 6 7 8 9 10 11];
% Define the time shift
k = 3;
% Create the time-shifted signal
x_shifted = x((1+k):end);
% Plot the time-shifted signal
stem(n, x_shifted)
title('Time-Shifted Discrete-Time Signal')
xlabel('n')
ylabel('x[n-k]')

% Define the original signal
n = 0:10;
x = [1 2 3 4 5 6 7 8 9 10 11];
% Define the scaling factor
a = 2;
% Create the scaled signal
x_scaled = a*x;
% Plot the scaled signal
stem(n, x_scaled)
title('Scaled Discrete-Time Signal')
xlabel('n')
ylabel('a*x[n]')

% Define the original signal
n = 0:10;
x = [1 2 3 4 5 6 7 8 9 10 11];
% Create the reversed signal
x_reversed = fliplr(x);
% Plot the reversed signal
stem(n, x_reversed)
title('Reversed Discrete-Time Signal')
xlabel('n')
ylabel('x[-n]')

