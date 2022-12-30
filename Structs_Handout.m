close all; clear all;

%% load in the MATLAB file
load patients

%% Create and assign structure 

for n = 1:1:length(LastName)
    Patient(n).LastName = LastName{n};
    Patient(n).Gender = Gender{n};
    Patient(n).SelfHealthAssess = SelfAssessedHealthStatus{n};
    Patient(n).Age = Age(n);
    Patient(n).Smoker = Smoker(n);
    Patient(n).Weight = Weight(n);
    Patient(n).Height = Height(n);
end

%% Determine number of smokers under 40
count = 0;

for i = 1:1:length(LastName)
    if (Patient(i).Age < 40 && Patient(i).Smoker == 1)
        count = count + 1;
    end
end
% Display number of smokers under 40
disp(count);

%% Determine BMI for patients and put in struct
for j = 1:1:length(LastName)
   m(j) = Patient(j).Weight * 0.453592;
   h(j) = Patient(j).Height *  0.0254;
   Patient(j).BMI = m(j) / (h(j)^2);
end
%% Plot BMI for all patients
% Initialize vector for all BMI values
AllBMI = [];
%Fill vector with info from struct
for k = 1:1:length(LastName)
    AllBMI(k) = Patient(k).BMI;
end

% Plot and label
figure(1)
nbins = 100;
h = histogram(AllBMI, nbins); hold on;
title('Patient BMI')
ylabel('BMI')
xlabel('Patient')

