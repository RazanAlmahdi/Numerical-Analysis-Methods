%% *BISECTION METHOD*
%% Input
clear; clc
a = 3; %beginning of the interval
b = 4; %end of the interval
c =(a+b)/2; %interval midpoint
tolerance = 0.0001; %error tolerance
n = 100;
f = @(x) exp(-x) .* (3.2 .* sin(x) - 0.5 .* cos(x)); %function y-axis
%% Initial Condition
i = 0; %iteration counter
err = abs(b-a); %error calculation
%% Plot
fprintf(" n      a        b         c        f(a)      f(b)      f(c)     Error");
%% Loop
while(err > tolerance && f(a)*f(b)<0 && i < n) %Loop will run while the error is greater than tolerance and the function chamges sign in the interval
    c = (a+b)/2; % recalculating c 
    fprintf('%2i %9.5f %9.5f %9.5f %9.5f %9.5f %9.5f %9.5f\n',i, a,b,c,f(a),f(b),f(c),err);
    if f(c) == 0 % if f(c) = 0 the root is fount and displayed
        fprintf('Root at x = %f \n\n', c);
        return
    end
    % Updating the interval
    if f(a)*f(c) > 0 %c is closer to b (same sign)
         a = c;
    else 
         b = c; % c closer to a
    end 
    % recalculating the error and increasing the counter by one
    err = abs(b-a);
    i = i+1;

end

if f(a)*f(b) > 0 % if the function does not change sign in the interval the root is not in the interval
        fprintf('Root is not in this interval : [%5.3f , %5.3f]', a, b);
else
    fprintf('Root approximately at x = %.5f', c);
end
