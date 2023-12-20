clear all;
close all;

%Carreguem els valors de les taules dels arxius Excel
ValorsP1='Valors_N1_P1.xlsx';
ValorsP2='Valors_N1_P2.xlsx';
ValorsP3='Valors_N1_P3.xlsx';
ValorsP4='Valors_N1_P4.xlsx';
ValorsP5='Valors_N1_P5.xlsx';

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
x = linspace(0,0.15,100);
y1 = 56.984*x + 3.1627;
y2 = 87.247*x + 1.6359;
plot(x,y1,'r');
plot(x,y2,'b');
title('N1 - P1');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 56.984x + 3.1627','y2 = 87.247x + 1.6359');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P2
figure(2);
hold on
scatter(P2_arr(1:6,1),P2_arr(1:6,2),'b');
scatter(P2_arr(7:9,1),P2_arr(7:9,2),'r');
x = linspace(0,0.015,100);
y1 = 136.77*x + 0.5694;
y2 = 254.65*x + 0.3176;
plot(x,y1,'r');
plot(x,y2,'b');
title('N1 - P2');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 136.77x + 0.5694','y2 = 254.65x + 0.3176');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P3
figure(3);
hold on
scatter(P3_arr(1:5,1),P3_arr(1:5,2),'b');
scatter(P3_arr(6:8,1),P3_arr(6:8,2),'r');
x = linspace(0,0.0000006,100);;
y1 = 109846*x - 0.0023;
y2 = 142335*x + 0.0027;
plot(x,y1,'r');
plot(x,y2,'b');
title('N1 - P3');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 109846x - 0.0023','y2 = 142335x + 0.0027');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P4
figure(4);
hold on
scatter(P4_arr(1:6,1),P4_arr(1:6,2),'b');
scatter(P4_arr(7:9,1),P4_arr(7:9,2),'r');
x = linspace(0,0.0000005,100);
y1 = 104103*x + 0.0071;
y2 = 119147*x + 0.0034;
plot(x,y1,'r');
plot(x,y2,'b');
title('N1 - P4');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 104103x + 0.0071','y2 = 119147x + 0.0034');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P5
figure(5);
hold on
scatter(P5_arr(1:6,1),P5_arr(1:6,2),'b');
scatter(P5_arr(7:9,1),P5_arr(7:9,2),'r');
x = linspace(0,0.0000005,100);
y1 = 121626*x + 0.0065;
y2 = 258603*x + 0.0007;
plot(x,y1,'r');
plot(x,y2,'b');
title('N1 - P5');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 121626x + 0.0065','y2 = 258603x + 0.0007');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off