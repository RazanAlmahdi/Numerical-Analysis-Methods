%% *Taylor Differentiation Method Code*
%% Input
clear;clc
n=100;      % numer of iteration
a=1;        %interval start value
b=5;        %interval end value
h=(b-a)/n;   % step size

%% x discretization
x=a:h:b; 
y=zeros(size(x));
%% Intial condition
y(1)=1; 

%% Differential Eq. y'=f(x,y)=e^(2x)+ln(x)
% The loop to solve the DE
fprintf(" n      x        y");
fprintf('%2i %9.5f %9.5f',0, a,y(1));
for i=1:n
    % adding precion with 1st and 2nd derivatif
    f1 = exp(2 * x(i)) + log(x(i)); % function
    f2 = 2 * exp(2 * x(i)) + 1 / x(i); % 1st derivatif
    f3 = 4 * exp(2 * x(i)) - 1 / (x(i)^2); %second derivatif
    y(i+1) = y(i) + h * f1 + ((h^2)/factorial(2)) * f2 + ((h^3)/factorial(3)) * f3; % y_n-1
    fprintf('%2i %9.5f %9.5f\n',i, x(i+1),y(i+1));
end
%% Visualization
figure(1)
plot(x,y)
xlabel('x')
ylabel('y(x)')
