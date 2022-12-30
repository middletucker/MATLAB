close all; clear all;
%% Open and read file
PVTable = readtable('MousePVloops.xlsx');
%% Create cell of colors to use for plotting
ColorCell = {[0 0 1]; [0 1 0]; [1 0 0]; [1 1 1]; [1 1 0]; [1 0 1]; [0 1 1]; ...
    [0.825 0.19 0.279]; [0.586 0.448 0.995]; [0.272 0.237 0.151]; ...
    [0.616 0.740 0.860]; [0.799 0.884 0.613]; [0.012 0.015 0.709]; ...
    [0.171 0.568 0.187]; [0.705 0.026 0.234]};
%% Initialize cell for legend
lgd = cell(1, length(ColorCell));

%% Plot using for loop
figure(1); hold on
for i = 2:18
  Pressure = strcat('P', num2str(i));
  Volume = strcat('V', num2str(i));
  plot(PVTable.(Pressure),PVTable.(Volume), 'Color', ColorCell{i-1});
  lgd{i-1} = strcat('Time', num2str(i));
end

%% label and save
title('Mouse PV Loops');
xlabel("Pressure [cmH2O]");
ylabel("Volume [mL]");

legend (lgd, 'Location', 'best')
xlim([0 41])
grid on

saveas(figure(1), 'PVLoops', 'pdf');