% ways to create 1D arrays
close all; %clear all

startTime = 0;
endTime = 10;
deltaT = 0.01;

t = startTime:deltaT:(endTime-deltaT);
t2 = linspace(startTime, endTime, 450);

s = sin(t2);
s2 = cos(t2 + pi/4);


myColors = {[0.1 0.6 0.6], ... % teal
            [0.6 0.6 0.6], ... % gray
            [0.8 0.2 0.2], ...
            [0.25 0.8 0.3]};   % a "nice" lime green


myMatrix = [1 2 3; ...
            4 5 6; ...
            7 8 9];


figure(1)
%subplot(2,1,1)
plot(t2(1:10:end),s(1:10:end), 'ko', 'Linewidth', 1.1) %shorthand for color, marker, linespec
hold on
%subplot(2,1,2)
plot(t2,s2,'Color',myColors{4}, 'LineWidth', 1.5, 'LineStyle','-') % type in an RGB use 0 to 1
grid on
xlim([0 3*pi])
ylim([-1.1 1.1])
title(['This is my title for plot number ' num2str(1)])
ylabel('Signal [units]','FontWeight','bold','FontName','Cambria')
xlabel('time [seconds]','FontWeight','bold','FontName','Cambria'); %ylabel('Signal [units]')
saveas(figure(1), 'FullMoon', '.jpg');

