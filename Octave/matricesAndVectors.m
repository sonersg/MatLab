clc, clearvars

A = [1 2 3; 4 5 6]

A(1,1) = 1235

A(1,:)

A(2, :)

A(1,2)

A(2, 2:end)

clc, clearvars, close all

x = linspace(0,5)

y = (-(x-3).^2) +10

%plot(x,y)

%plot(x,y, '*')

%minValue = min(y)

%maxValue = max(y)

[maxValue, i] = max(y)

x_maxVal = x(i)

% anonymous functions

y = @(x)(-(x-3).^2) +10

y(20.2)
