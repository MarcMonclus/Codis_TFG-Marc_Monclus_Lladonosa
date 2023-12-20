clear all;
close all;

%Carreguem els valors de les taules dels arxius Excel
ValorsP1='Valors_N2_P1.xlsx';
ValorsP2='Valors_N2_P2.xlsx';
ValorsP3='Valors_N2_P3.xlsx';
ValorsP4='Valors_N2_P4.xlsx';
ValorsP5='Valors_N2_P5.xlsx';

%Convertim les taules Excel a MATLAB
matlabTable_P1=readtable(ValorsP1);
matlabTable_P2=readtable(ValorsP2);
matlabTable_P3=readtable(ValorsP3);
matlabTable_P4=readtable(ValorsP4);
matlabTable_P5=readtable(ValorsP5);

%Convertim les taules en matrius
P1_arr=table2array(matlabTable_P1);
P2_arr=table2array(matlabTable_P2);
P3_arr=table2array(matlabTable_P3);
P4_arr=table2array(matlabTable_P4);
P5_arr=table2array(matlabTable_P5);

%% P1
figure(1);
hold on
scatter(P1_arr(1:6,1),P1_arr(1:6,2),'b');
scatter(P1_arr(7:9,1),P1_arr(7:9,2),'r');
x = linspace(0,0.8,100);
y1 = 44.554*x + 1.8608;
y2 = 37.896*x + 2.7872;
plot(x,y1,'r');
plot(x,y2,'b');
title('N2 - P1');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 44.554x + 1.8608','y2 = 37.896x + 2.7872');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P2
figure(2);
hold on
scatter(P2_arr(1:6,1),P2_arr(1:6,2),'b');
scatter(P2_arr(7:9,1),P2_arr(7:9,2),'r');
x = linspace(0,0.04,100);
y1 = 64.824*x + 1.4122;
y2 = 317.01*x + 0.1544;
plot(x,y1,'r');
plot(x,y2,'b');
title('N2 - P2');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 64.824x + 1.4122','y2 = 317.01x + 0.1544');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P3
figure(3);
hold on
scatter(P3_arr(1:5,1),P3_arr(1:5,2),'b');
scatter(P3_arr(6:7,1),P3_arr(6:7,2),'r');
x = linspace(0,0.7,100);
y1 = 241.35*x + 0.1031;
y2 = 25.166*x + 8.7815;
plot(x,y1,'r');
plot(x,y2,'b');
title('N2 - P3');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 241.35x + 0.1031','y2 = 25.166x + 8.7815');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P4
figure(4);
hold on
scatter(P4_arr(1:6,1),P4_arr(1:6,2),'b');
scatter(P4_arr(7:9,1),P4_arr(7:9,2),'r');
x = linspace(0,0.2,100);
y1 = 63.417*x + 0.6107;
y2 = 85.913*x + 1.5342;
plot(x,y1,'r');
plot(x,y2,'b');
title('N2 - P4');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 63.417x + 0.6107','y2 = 85.913x + 1.5342');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P5
figure(5);
hold on
scatter(P5_arr(1:6,1),P5_arr(1:6,2),'b');
scatter(P5_arr(7:9,1),P5_arr(7:9,2),'r');
x = linspace(0,0.03,100);
y1 = 241.37*x + 0.4409;
y2 = 115.86*x + 1.0664;
plot(x,y1,'r');
plot(x,y2,'b');
title('N2 - P5');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 241.37x + 0.4409','y2 = 115.86x + 1.0664');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off