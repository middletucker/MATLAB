%% CSCI 130
% Week 15 Practice with Structs: Week15WednesdayHandout.pdf
% Dr. M
% 
%% clear workspace, clear command window, and close all open plots
close all; clear all; clc;

%% load in the MATLAB file (comes with MATLAB)
load patients

%% Create a structure 
% Our structure will contain each patient's information in it.
for n = 1:1:length(LastName)
   Patient(n).LastName = LastName{n};
   Patient(n).Gender = Gender{n};
   Patient(n).SelfHealthAssess = SelfAssessedHealthStatus{n};
   Patient(n).Age = Age(n); 
   Patient(n).Smoker = Smoker(n);
   Patient(n).Weight = Weight(n);
   Patient(n).Height = Height(n);
end

% Check in the command window to see what happens when you type:
% Patient
% length(Patient)
% size(Patient)
% Patient(1)
% Patient(1).Age
% Patient(50)

%% How many smokers under 40

count_smoke = 0; % initialize counter

for n = 1:1:length(Patient)
    if Patient(n).Age < 40 && Patient(n).Smoker == 1
        count_smoke = count_smoke +1;
    end
end

disp(['There are ' num2str(count_smoke) ' smokers under 40.'])

%% BMI
Patient = AddBMI(Patient); % use user-created function to add BMI field

Patient(1).BMI

% extract all BMI data from the structure
AllBMI = []; % initialize vector -- not necessary in MATLAB
for n = 1:1:length(Patient)
    AllBMI(n) = Patient(n).BMI;
end

% create histogram of BMI data
figure;
histogram(AllBMI);
xlabel('BMI');
ylabel('Number of Patients');
title('BMI Distribution');

%% Within Script Functions (User-Created)

function Patient = AddBMI(Patient)
    for n = 1:1:length(Patient)
       m = Patient(n).Weight * 0.453592; % convert lbs to kg
       h = Patient(n).Height * 0.0254; % convert inches to meters
       Patient(n).BMI = m/(h^2);
    end
end

    