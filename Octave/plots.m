clc, clearvars, close all

x = linspace(-10,10)

y1 = -(x-3).^2 + 10
y2 = -(x-3).^2 + 15
y3 = -(x-5).^2 + 10

figure(1)
%subplot(2,2,1) % place it in the first position of 2 by 2 matrice
plot(x,y1, "rs") % red squares
xlabel('x'), ylabel('y'), title('x vs y')
grid on
hold on

plot(x,y2, "mv") % magenta triangle
hold on

plot(x,y3,"go", "MarkerFaceColor", "r", "MarkerSize",10)

legend("y1", "y2", "y3")

xlim([0,20]), ylim([0,40])

