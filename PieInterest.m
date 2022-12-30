%% CSCI 130 - Pie Interest
% Lillian Tucker
% 12/1/2022

%% Declare and Parse
%Read file
MyCell = readcell('PieInterest.xlsx');

% Gather and sort data from excel file
PieOrder = { MyCell{1,2} MyCell{1,4} MyCell{1,6}, MyCell{1,8}, MyCell{1,10}, MyCell{1,12}};
Interest = [ MyCell{2:end,2}; MyCell{2:end,4}; MyCell{2:end,6}; MyCell{2:end,8}; ...
    MyCell{2:end,10}; MyCell{2:end,12}];
Interest = Interest';

%% Find Most/Least Popular Pie Overall
% Calculate the average for each column(aka pie)
AvgInt = mean(Interest);

%fprintf('%i %i %i %i %i\n', AvgInt.'); use to check average

% Find which average value is the greatest (aka most popular) and print
[MAX, Ind] = max(AvgInt);
disp(['The most popular pie is ' PieOrder{Ind}]);

% Find which average value is the lowest (aka least popular) and print
[MIN, Ind] = min(AvgInt);
disp(['The least popular pie is ' PieOrder{Ind}]);

%% Find Most/Least Popular Pie for Colorado
count = 1;

for i = 1:2:12 % loop for all types of pies through each odd column
    for n = 2:1:length(MyCell(:,1)) % loop for the row starting with 2
        if strcmp('Colorado', MyCell{n,i})
            COloc(count) = n - 1; % -1 because the 1st row is just names
            count = count + 1;
        break;
        end
    end
end

% Find which average value is the greatest (aka most popular) and print
[MAXC, Ind] = max(COloc);
disp(['The most popular pie in Colorado is ' PieOrder{Ind}]);

% Find which average value is the lowest (aka least popular) and print
[MINC, Ind] = min(COloc);
disp(['The least popular pie in Colorado is ' PieOrder{Ind}]);