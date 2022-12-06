close all; clear all;

PVTable = readmatrix('MousePVloops.xlsx');
a = input("Input one");
b = input("Input two");

w = PVTable(2:19, a); 
x = PVTable(2:19, a+1); 

y = PVTable(2:19, b);
z = PVTable(2:19, b+1);


plot(w,x,'--.');
hold on;
plot(y,z,'--*');

xlabel("Pressure");
ylabel("Volume");