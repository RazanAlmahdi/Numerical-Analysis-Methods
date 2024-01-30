%% *Secant Method Code*
%% Input
%Differential Eq. f=x^5+x-1;
clear; clc
f = @(x) x^5 + x - 1;
% the root lies in the interval (x0, x1)
x0=0; %here x0=0
x1=1;%here x1=1
epsilon=0.0001; %error of tolerance 
n = 100;
%% Inirial Condition
i = 2; %the iteration
xn= x1-f(x1)*(x1-x0)/(f(x1)-f(x0)); %finding Xn
error = abs(xn-x1); %abs error

%% Plot
 %printing the plot
fprintf('  n    x_n-2    x_n-1    f(x_n-2)    f(x_n-1)    x_n   |x_n-x_n-1|');
%% Loop
while (error > epsilon && i < n) %evaluate error and update values to proceed
    fprintf('%2i %9.5f %9.5f %9.5f %9.5f %9.5f %9.5f\n',i,x0,x1,f(x0),f(x1), xn, error);
    %updating x_n-2 and x_n-1
    x0=x1;        
    x1=xn;
    xn= x1-f(x1)*(x1-x0)/(f(x1)-f(x0)); %recalculating Xn
    error = abs(xn-x1);

    i= i+1; %increment iteration
end
    fprintf('\n The root is %4.5f ',xn); %print the root

