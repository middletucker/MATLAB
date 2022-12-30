%% CSCI 130 Week 15 
% Monday Example: This code reads in mouse PV loop dataset as a table and
% then plots selected plots, as edited within this script.
% By: Dr. M
% 
%% clear workspace, clear command window, and close all open plots
close all; clear all; clc;

%% load in the file
% time point options are 2 to 19
Loops = readtable('MousePVloops.xlsx');

%% put desired time points in an array
% plot time points 2 and 18
T2P = [2 8];

%% use a for loop to plot where names are dynamically created
% note: must input a string within the paren --> ".(STRING_HERE)"

figure;
hold on; 
grid on;
% plot all times
for n = 1:length(T2P)
    Pselect = ['P' num2str(T2P(n))];
    Vselect = ['V' num2str(T2P(n))];
    plot(Loops.(Pselect), Loops.(Vselect));
end
% add labels, legend, and title
xlabel('Pressure [cmH_2O]');
ylabel('Volume [mL]')
title('PV loops from start to end')
legend([num2str(15*T2P(1)) ' min'], [num2str(15*T2P(2)) ' min'], ...
    'location', 'NorthWest')