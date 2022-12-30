% Lillian Tucker
% CSCI 130
% Final Exam Code
% 12/14/2022
close all; clear all;
%% Read Table
StatTable = readtable('StatData.xlsx');
%% Initialize input
x = input('Select the plot you want to see by entering 1 or 2\n');

%% Keep prompting until accepted value entered
while (x ~= 1) && (x ~= 2)
disp('Please enter either 1 or 2')
disp('Other values wil not be accepted')
x = input('Select which plot you want to see by entering 1 or 2\n');
end

%% Take out needed table values and assign to vectors
y1 = StatTable.SpearmanRho;

y2 = StatTable.RMSEnormalized;
x2 = StatTable.NumObserv;
    [percent1, percent2] = PlotNumber2(x2);
    figure(2)
    scatter(x2, y2)
    hold on
    xlabel('Observations [#]')
    ylabel('Normalized Root Mean Squared Error')
    title("RMSEnromalized vs Observations(45: "+ percent1 +"%, 37: "+percent2+"%)")
    grid on

%% If else to determine which plot to graph
if x == 1
    PlotNumber1(y1) % redirect to function in other script file
elseif x == 2

end

%{
function PlotNumber1(y1)
y_sort = sort(y1, 'descend');


y_pos = y_sort( y_sort>=0 );
l_pos = length(y_pos);
x_pos = [1:1:l_pos];

y_neg = y_sort( y_sort<0 );
l_neg = length(y_neg);
x_neg = [l_pos+1:1:l_neg+l_pos];

Rho_min = min(y1);
Rho_max = max(y1);
figure(1)
scatter(x_pos, y_pos, 'k', 'filled', 'Marker', 's')
hold on
scatter(x_neg, y_neg, 'r', 'filled', 'Marker', 's')

xlabel('Data [#]')
ylabel('Spearman Rho Value')
title("Spearman Rho( "+Rho_min+" to "+Rho_max+")")
grid on
end
%}
%% function for 2nd plot
function [percent1, percent2] = PlotNumber2(x2) 
count1 = 0;
count2 = 0;

for i = 1:length(x2) % for to read each value in vector
    if x2(i) == 45
        count1 = count1+1;
    
    elseif x2(i) == 37
        count2 = count2+1;
    end
end
percent1 = (count1/length(x2))*100;
percent2 = (count2/length(x2))*100;
end

