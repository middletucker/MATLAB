%% CSCI 130 
%Lillian Tucker
%Rectangular to Polar (main m file)
% clear workspaces and close all figures
close all;
clear all;

% Execute defined function
[x,y] = getXYcoords();

%Print entered values
fprintf('x =  %d\n', x);
fprintf('y =  %d\n', y);

%Execute defined function
[r, angle] = convert2Polar(x,y);

%Execute defined function
display(r, angle);

% Define function to gather rectangular coordinates
function [x_val,y_val] = getXYcoords()
 x_val = input("Input a value for x: ");
 y_val = input("Input a value for y: ");

end

%Define function to display converted values
function display(r, theta)
 disp("The values have been converted to polar form: ");
fprintf('r =  %d\n', r);
fprintf('theta =  %d\n', theta);
end