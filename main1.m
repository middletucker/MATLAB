%{
Write a program which evaluates the signal function (s(t)) for a time vector between 0 and 5 and contains 250 elements.
𝑠(𝑡) = 3 cos(10𝜋𝑡) + 2𝑒−0.5𝑡
Plot this signal
• Determine s(t) by using a within script function.
• Give the figure x-axis labels, y-axis labels, and a title. Display the grid lines.
• Set the line width to 1.5 and the line color to black.
%}
e = exp(1);

t = 0 : 0.02 : 5;
st = 3 * cos(10 * pi * t) + 2* e .^(-0.5*t);

grid on

plot(t, st, 'k-', 'LineWidth', 1.5);

title('Solution of s(t)')
xlabel('t', 'FontSize', 15);
ylabel('s(t)', 'FontSize', 15);


%{
https://www.mathworks.com/matlabcentral/answers/647808-need-help-in-coding
https://www.mathworks.com/help/matlab/math/powers-and-exponentials.html
}