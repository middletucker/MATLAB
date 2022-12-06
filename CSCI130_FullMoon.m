%% CSCI130: Is it a FullMoon yet?

close all; clear all;

[Week, searchesUS] = readvars("SearchesForFullMoon_Year.xlsx");

% n_Weeks = 1:length(searchesUS); plot in terms of week number rather than
% date

%Find mean data using function mean()
M = mean(searchesUS);

%plot table data (color black, line thickness 1.5), plot x = time date

figure(1);

plot(Week,searchesUS, 'Color', 'k', 'Linewidth', 1.5)
hold on

%Plot mean data using yline()
yline(M, '-r', 'Linewidth', 1.5)

%Label graph
xlabel('Search Date')
ylabel('Search Interest')
title('Google Search Interest For Full Moon')

% Create Legend
legend({'By Week','Average'},'Location','northwest')

%Set limit for y axis
ylim([0 110])
saveas(figure(1), 'FullMoon', 'jpg');