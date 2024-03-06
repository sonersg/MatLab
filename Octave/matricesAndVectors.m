

% Matrices and Vectors

clc, clearvars

x = 1:10
x = 1:2:10 % 2 is jump value
x'



t = "LINSPACES"

Y = linspace(20, 50);
% Give 100 values between 20-50
%(default is 100)
Y = linspace(20, 50, 10)
% Give 10 values between 20-50

lastVal = Y(end)
Y(end - 5)



t = "MATRICE OPERATIONS"

A = [1 2 3; 4 5 6]

A + 2
A - 2
A * 2
A * A'
A.^2 % Take the square of each element

t = "INDEX"

A(1,1) + A(1,2)

A(1,1) = 1235

A(1,:)

A(2, :)

A(1,2)

A(2, 2:end)



t = "ONES and ZEROS and EYE"

O = ones(3)
O = ones(3,1)

Z = zeros(5)
Z = zeros(1,5)

E = eye(3)



