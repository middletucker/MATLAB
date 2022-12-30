%% Rock Paper Scissors
% Week 13
% CSCI 130 - In-Class Example
%UserPick = inputdlg('Type Rock, Paper, or Scissors'); pop up window
close all; clear all;

%% Get the User Pick
UserPickStr = input('Type Rock, Paper, or Scissors: ', 's'); % command line based
UserPick = UserPickStr(1);

%% Randomly Assign the Computer Pick
ComputerOptions = {'R', 'S', 'P'};
randomIndex = floor(rand(1)*3 + 0.99999);
ComputerPick = ComputerOptions{randomIndex};

%% Compare the 2
Flag_Result = 0; % 0 = lose, 1 = win, 2 = tie

if UserPick == 'P' && ComputerPick == 'R' %WIN
    Flag_Result = 1;
  
elseif UserPick == 'S' && ComputerPick == 'P' %WIN
    Flag_Result = 1;
    
elseif UserPick == 'R' && ComputerPick == 'S' %WIN
    Flag_Result = 1;
    
elseif UserPick == ComputerPick
    Flag_Result = 2;
else
    % lose
    Flag_Result = 0;
end


%% Give Feedback to the User, so they know who won.

if Flag_Result == 1
    disp('YAY. You Won!');
elseif Flag_Result == 2
    disp('There is no winner! It''s a tie')
else
    disp('You lost.')
end
   