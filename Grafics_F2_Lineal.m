clear all;
close all;

%Carreguem els valors de les taules dels arxius Excel
ValorsP1='Valors_F2_P1.xlsx';
ValorsP2='Valors_F2_P2.xlsx';
ValorsP3='Valors_F2_P3.xlsx';
ValorsP4='Valors_F2_P4.xlsx';
ValorsP5='Valors_F2_P5.xlsx';

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
scatter(P1_arr(1:3,1),P1_arr(1:3,2),'b');
scatter(P1_arr(4:9,1),P1_arr(4:9,2),'r');
x = linspace(0,0.02,100);
y1 = 71.059*x + 1.8236;
y2 = 138.67*x + 0.5409;
plot(x,y1,'r');
plot(x,y2,'b');
title('F2 - P1');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 71.059x + 1.8236','y2 = 138.67x + 0.5409');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P2
figure(2);
hold on
scatter(P2_arr(1:3,1),P2_arr(1:3,2),'b');
scatter(P2_arr(4:9,1),P2_arr(4:9,2),'r');
x = linspace(0,0.005,100);
y1 = 255.63*x + 0.5009;
y2 = 316.52*x + 0.2845;
plot(x,y1,'r');
plot(x,y2,'b');
title('F2 - P2');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 255.63*x + 0.5009','y2 = 316.52*x + 0.2845');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P3
figure(3);
hold on
scatter(P3_arr(1:3,1),P3_arr(1:3,2),'b');
scatter(P3_arr(4:9,1),P3_arr(4:9,2),'r');
x = linspace(0,0.6,100);
y1 = 31.917*x + 5.31;
y2 = 31.746*x + 1.1658;
plot(x,y1,'r');
plot(x,y2,'b');
title('F2 - P3');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 31.917x + 5.31','y2 = 31.746x + 1.1658');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P4
figure(4);
hold on
scatter(P4_arr(1:3,1),P4_arr(1:3,2),'b');
scatter(P4_arr(4:9,1),P4_arr(4:9,2),'r');
x = linspace(0,0.08,100);
y1 = 130.98*x + 0.8361;
y2 = 268.08*x + 0.2664;
plot(x,y1,'r');
plot(x,y2,'b');
title('F2 - P4');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 130.98x + 0.8361','y2 = 268.08x + 0.2664');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P5
figure(5);
hold on
scatter(P5_arr(1:3,1),P5_arr(1:3,2),'b');
scatter(P5_arr(4:9,1),P5_arr(4:9,2),'r');
x = linspace(0,0.02,100);
y1 = 190.72*x + 0.4112;
y2 = 1205.6*x + 0.0352;
plot(x,y1,'r');
plot(x,y2,'b');
title('F2 - P5');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 190.72x + 0.4112','y2 = 1205.6x + 0.0352');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off