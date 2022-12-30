%% CSCI 130 
%Lillian Tucker
%Rectangular to Polar (secondary m file)
% clear workspaces and close all figures
close all;
clear all;

%Define function to convert rectangular to polar
function [r,angle] = convert2Polar(x,y)
r = sqrt((x*x)+(y*y));
angle = atan(y/x) * (180/pi);
end
