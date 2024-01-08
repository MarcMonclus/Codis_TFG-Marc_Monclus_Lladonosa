clear all;
close all;

%Carreguem els valors de les taules dels arxius Excel
ValorsP1='Valors_E2_P1.xlsx';
ValorsP2='Valors_E2_P2.xlsx';
ValorsP3='Valors_E2_P3.xlsx';
ValorsP4='Valors_E2_P4.xlsx';
ValorsP5='Valors_E2_P5.xlsx';

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
x = linspace(0,0.2,100);
y1 = 37.257*x + 5.0689;
y2 = 109.45*x + 0.7453;
plot(x,y1,'r');
plot(x,y2,'b');
title('E2 - P1');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 37.257x + 5.0689','y2 = 109.45x + 0.7453');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P2
figure(2);
hold on
scatter(P2_arr(1:3,1),P2_arr(1:3,2),'b');
scatter(P2_arr(4:9,1),P2_arr(4:9,2),'r');
x = linspace(0,0.002,100);
y1 = 286.94*x+0.5449;
y2 = 373.82*x+0.1934;
plot(x,y1,'r');
plot(x,y2,'b');
title('E2 - P2');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 286.94x+0.5449','y2 = 373.82x+0.1934');
rectangle('Position', [0, 0, 0.002,1.2], 'EdgeColor', 'k');
hold off

%% P3
figure(3);
hold on
scatter(P3_arr(1:3,1),P3_arr(1:3,2),'b');
scatter(P3_arr(4:8,1),P3_arr(4:8,2),'r');
x = linspace(0,0.6,100);
y1 = 30.475*x + 3.4395;
y2 = 94.712*x + 0.0951;
plot(x,y1,'r');
plot(x,y2,'b');
title('E2 - P3');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 30.475x + 3.4395','y2 = 94.712x + 0.0951');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P4
figure(4);
hold on
scatter(P4_arr(1:3,1),P4_arr(1:3,2),'b');
scatter(P4_arr(4:8,1),P4_arr(4:8,2),'r');
x = linspace(0,0.035,100);
y1 = 123.78*x + 1.5529;
y2 = 268.42*x + 0.2873;
plot(x,y1,'r');
plot(x,y2,'b');
title('E2 - P4');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 123.78x + 1.5529','y2 = 268.42x + 0.2873');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P5
figure(5);
hold on
scatter(P5_arr(1:3,1),P5_arr(1:3,2),'b');
scatter(P5_arr(4:9,1),P5_arr(4:9,2),'r');
x = linspace(0,0.01,100);
y1 = 352.37*x + 0.4113;
y2 = 990.88*x + 0.0827;
plot(x,y1,'r');
plot(x,y2,'b');
title('E2 - P5');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 352.37x + 0.4113','y2 = 990.88x + 0.0827');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off