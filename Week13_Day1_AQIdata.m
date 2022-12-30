%% Air Quality Data in MATLAB
% Program Written by: Dr. M
% Date: 10/2020
% Note this file requires that you preload the 
% file: aqidaily2020_COcities.xlsx as column vectors

% determine how many times it was healty for sensitive groups
%%

close all; clear all; 

filename = 'aqidaily2020_COcities.xlsx';
[Date, PM2p5AQI_Denver,	Category_Denver, PM2p5AQI_GJ, Category_GJ, ...
    PM2p5AQI_FoCo, Category_FoCo] = readvars(filename);
disp(['Data is from the file: ' filename]);


%% Data Analysis
% want to know the best day and the worst day

[val_Best_Denver, val_Worst_Denver] = bestDayAndWorstDay(PM2p5AQI_Denver);
disp(['The best day in Denver was ...' num2str(val_Best_Denver)])

indD = find15(PM2p5AQI_Denver);

function [val_Best, val_Worst] = bestDayAndWorstDay(PM_city)
    
    val_Best = min(PM_city);
    val_Worst = max(PM_city);

end

