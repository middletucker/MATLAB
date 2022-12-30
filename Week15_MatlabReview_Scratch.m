%% A look at all the different data types
clear all; close all; clc; % clear all variables in workspace, close all figures, and clear the command window

% here we have an int
a_int = 10;     % is saved as a double, there is no difference here
a_double = 10;  % is saved as a double, double-click workspace to see
a_str = num2str(a_int);
[r_a_str, c_a_str] = size(a_str);
a_str(1) % should display the first spot or '1'

% arrays in MATLAB
x1 = 1:1:100; % this means start at 1, increment by 1, go to 100
x2 = linspace(0,1,50);
x1_sub = x1(1:2:end); % this will extract odd numbered indicies

y = 2*cos(20*x2) + 5;


% plot
plot(x2,y);

% find the 3rd max point
n1 = floor(length(y)*0.5); % lower limit of the search
n2 = floor(length(y)*0.8); % upper limit of the search

[M, ind] = max(y(n1:n2))

ind_real = ind+n1-1; % should give us the real value

hold on;
plot(x2(ind_real), y(ind_real), 'o', 'MarkerFaceColor', 'r')




%% matricies in MATLAB
C = [1 2 3; 4 5 6; 7 8 9];
% get everything in the 2nd row
inRow2 = C(2,:);
inCol2 = C(:,2);


% sum all values in matrix
sum(C) % will sum across the columns
sum(sum(C)) % over all sum across all columns and rows
max(C) % max in each columns
max(max(C))
min(C)
mean(C)

% Struct
Student.name = 'Bob';  % Student(1).name could also be used here if you know you will make it an array
Student.major = 'Art';
Student.GPA = 3.5;
Student.year = 2;

Student

% make this an array to accomodate a 2nd student
Student(2).name = 'Sally'
Student(2).major = 'Poly Sci';
Student(2).GPA = 2.76;
Student(2).year = 3;