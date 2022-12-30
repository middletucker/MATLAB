% Lillian Tucker
% CSCI 130
% Final Exam Code: Out of script File
% 12/14/2022

function PlotNumber1(y1)
y_sort = sort(y1, 'descend'); %sort to descend and assign to vector


y_pos = y_sort( y_sort>=0 ); %assign poitive values to vector
l_pos = length(y_pos); 
x_pos = [1:1:l_pos];

y_neg = y_sort( y_sort<0 ); % assign negative values to vector
l_neg = length(y_neg);% value to determine x value array
x_neg = [l_pos+1:1:l_neg+l_pos]; %start after positive values

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
