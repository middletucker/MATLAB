%% Table flavor of Air Quality Data
% Instructions: use the import tool to read in the air quality data excel
% file and read it in as a table. 

close all;

yD = Data.PM2p5AQI_Denver;
yF = Data.PM2p5AQI_FoCo;
yG = Data.PM2p5AQI_GJ;

figure(1)
plot(yD, 'r*');
hold on;
plot(yF, 'bd');
plot(yG, 'ko');
legend('Denver', 'FoCo', 'GJ');
xlabel('Day');
ylabel('Particulate Level')
grid on;

%% Matrix flavor

yMat(:,1) = Data.PM2p5AQI_Denver;
yMat(:,2) = Data.PM2p5AQI_FoCo;
yMat(:,3) = Data.PM2p5AQI_GJ;

[r, c] = size(yMat);

% color spec
myRGB = [0 0 0; 0.1 0.7 0.6; 0.7 0.2 0.2];

figure(2)
for i = 1:c
    plot(yMat(:,i),'*', 'Color',myRGB(i,:));
    hold on;
end
legend('Denver', 'FoCo', 'GJ');
xlabel('Day');
ylabel('Particulate Level')
grid on;


