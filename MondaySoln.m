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

%% create the plots
% plot time points 2 and 18
figure;
plot(Loops.P2, Loops.V2, 'r.-', 'linewidth', 1.25);
hold on; grid on;
plot(Loops.P18, Loops.V18, 'b-', 'linewidth', 1.1);
xlabel('Pressure [cmH_2O]');
ylabel('Volume [mL]')
title('PV loops from start to end')
legend('30 min', [num2str(15*18) ' min'], 'location', 'NorthWest')

