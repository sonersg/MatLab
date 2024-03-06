% Section1: if Statement

clc, clearvars

A = randi(5,1,10);

tic
num3_if = sum(A == 3);

if num3_if >= 3
  disp("wow")
else
  disp("meow")
end

time_if = toc

% Section2: For Loop

num3_for = 0;

tic
for i = 1:length(A)
  if A(i) == 3
    num3_for = num3_for + 1;
  end
end

if num3_for >= 0.2*length(A)
  disp("wow")
end
time_for = toc

# while loops

z = 0;

  while z<11

    disp(z*z)
    z = z+1;

  endwhile


disp("Loop ended")

