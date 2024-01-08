clear all;
close all;

%Carreguem els valors de les taules dels arxius Excel
ValorsP1='Valors_E1_P1.xlsx';
ValorsP2='Valors_E1_P2.xlsx';
ValorsP3='Valors_E1_P3.xlsx';
ValorsP4='Valors_E1_P4.xlsx';
ValorsP5='Valors_E1_P5.xlsx';

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
x = linspace(0,0.3,100);
y1 = 127.49*x + 0.9012;
y2 = 70.05*x + 2.382;
plot(x,y1,'r');
plot(x,y2,'b');
title('E1 - P1');
xlabel('Energia (J)');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 127.49x + 0.9012','y2 = 70.05x + 2.382');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P2
figure(2);
hold on
scatter(P2_arr(1:6,1),P2_arr(1:6,2),'b');
scatter(P2_arr(7:9,1),P2_arr(7:9,2),'r');
x = linspace(0,0.002,100);
y1 = 183.39*x + 0.7067;
y2 = 61.741*x + 0.727;
plot(x,y1,'r');
plot(x,y2,'b');
title('E1 - P2');
xlabel('Energia (J)');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 183.39x + 0.7067','y2 = 61.741x + 0.727');
rectangle('Position', [0, 0, 0.002,1.2], 'EdgeColor', 'k');
hold off

%% P3
figure(3);
hold on
scatter(P3_arr(1:5,1),P3_arr(1:5,2),'b');
scatter(P3_arr(6:7,1),P3_arr(6:7,2),'r');
x = linspace(0,0.0000006,100);
y1 = 62622*x + 0.0102;
y2 = 84479*x + 0.0072;
plot(x,y1,'r');
plot(x,y2,'b');
title('E1 - P3');
xlabel('Energia (J)');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 62622x + 0.0102','y2 = 84479x + 0.0072');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P4
figure(4);
hold on
scatter(P4_arr(1:6,1),P4_arr(1:6,2),'b');
scatter(P4_arr(7:9,1),P4_arr(7:9,2),'r');
x = linspace(0,0.0000004,100);
y1 = 100404*x + 0.0052;
y2 = 109473*x + 0.0055;
plot(x,y1,'r');
plot(x,y2,'b');
title('E1 - P4');
xlabel('Energia (J)');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 100404x + 0.0052','y2 = 109473x + 0.0055');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P5
figure(5);
hold on
scatter(P5_arr(1:5,1),P5_arr(1:5,2),'b');
scatter(P5_arr(6:7,1),P5_arr(6:7,2),'r');
x = linspace(0,1.6e-7,100);
y1 = 79909*x + 0.0036;
y2 = 191617*x + 0.0021;
plot(x,y1,'r','MarkerEdgeColor', 'r');
plot(x,y2,'b','MarkerEdgeColor', 'r');
title('E1 - P5');
xlabel('Energia (J)');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 79909x + 0.0036','y2 = 191617x + 0.0021');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off