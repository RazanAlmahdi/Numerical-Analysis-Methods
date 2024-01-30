%% *Newton Method Code*
%% Input
% example of Newton method
% f(x)= (x^3)-(2x^2)-5=0 , [1,4] 
% f'(x)= 3x^2-4x
% x_n= xn_1-f(xn_1)/f'(xn_1)
clear; clc
n = 100;
xn_1 = 1; % x0
f = @(x) (x^3)-(2*x^2)-5; % find f(xn_1)
f_dx = @(dx) 3*dx^2 - 4*dx; %find f'
tolerance = 0.0001;
%% Initial Condition
x_n = xn_1 - f(xn_1)/f_dx(xn_1); %find x_n
error = abs(x_n - xn_1); %find the error
i = 1;
%% Plot
fprintf("n       x_(n-1)     f(x_(n-1))    f'(x_(n-1))     x_n       Error");
%% Loop
while (error > tolerance && i < n) 
    fprintf('%2i %12.5f %12.5f %12.5f %12.5f %12.5f\n',i, xn_1,f(xn_1), f_dx(xn_1), x_n, error ); %print the data
    xn_1 = x_n; %change xn_1
    x_n = xn_1 - f(xn_1)/f_dx(xn_1); %find x_n
    error = abs(x_n - xn_1); %find the error
    i = i + 1; %increment n
end

fprintf('Root approximately at x = %.5f', x_n);
