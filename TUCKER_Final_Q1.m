t = [-10:0.01:20];

a = -1*(t).^2+20*sin(t+0.5);

x = -5;
b = -1*(x).^2+20*sin(x+0.5);

plot(t,a, 'k-', 'LineWidth', 2)
hold on
plot(x,b, 'r.', 'LineWidth', 2, 'MarkerSize', 20)
xlabel('x [units]')
ylabel('y(x) [units]')
title('Question 1')
grid on