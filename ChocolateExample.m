%% Chocolate Example
% CSCI 130
% Dr. M
% Week 14

close all; clear all;

%% Read in Data
% use readvars to read in each column as a vector
[Weeks, ChocoInterest] = readvars('SearchesForChocolate.xlsx');
n_Weeks = 1:length(ChocoInterest);

%% Data Analysis
% Find Max
[Max, IndMax] = max(ChocoInterest);

%% Create Example Plots
% plot with numbered weeks
figure(1) % you can also just type figure to create a new figure window
plot(n_Weeks, ChocoInterest)
hold on
plot(n_Weeks(IndMax), Max, 'r*')
xlabel('Week Number')
ylabel('Search Interest')
title('Google Search Interst for Chocolate')
ylim([0 105])
xlim([0 53])
grid on;

% plot using datetime data
figure(2)
plot(Weeks, ChocoInterest)
hold on
plot(Weeks(IndMax), Max, 'r*')
xlabel('Search Date')
ylabel('Search Interest')
title('Google Search Interst for Chocolate')
title('Google Search Interst for Chocolate')
ylim([0 105])
grid on;
