clear all;
close all;

%Carreguem els valors de les taules dels arxius Excel
ValorsP1='Valors_F1_P1.xlsx';
ValorsP2='Valors_F1_P2.xlsx';
ValorsP3='Valors_F1_P3.xlsx';
ValorsP4='Valors_F1_P4.xlsx';
ValorsP5='Valors_F1_P5.xlsx';

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
x = linspace(0,0.02,100);
y1 = 88.88*x + 1.7027;
y2 = 220.97*x + 0.4387;
plot(x,y1,'r');
plot(x,y2,'b');
title('F1 - P1');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 88.88x + 1.7027','y2 = 220.97x + 0.4387');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P2
figure(2);
hold on
scatter(P2_arr(1:6,1),P2_arr(1:6,2),'b');
scatter(P2_arr(7:9,1),P2_arr(7:9,2),'r');
x = linspace(0,0.002,100);
y1 = 67.366*x + 0.8708;
y2 = -35.669*x + 0.7899;
plot(x,y1,'r');
plot(x,y2,'b');
title('F1 - P2');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 67.366x + 0.8708','y2 = -35.669x + 0.7899');
rectangle('Position', [0, 0, 0.002,1.4], 'EdgeColor', 'k');
hold off

%% P3
figure(3);
hold on
scatter(P3_arr(1:6,1),P3_arr(1:6,2),'b');
scatter(P3_arr(7:9,1),P3_arr(7:9,2),'r');
x = linspace(0,0.0000008,100);
y1 = 77543*x + 0.0184;
y2 = 108822*x + 0*0063;
plot(x,y1,'r');
plot(x,y2,'b');
title('F1 - P3');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 77543x + 0.0184','y2 = 108822x + 0*0063');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P4
figure(4);
hold on
scatter(P4_arr(1:6,1),P4_arr(1:6,2),'b');
scatter(P4_arr(7:9,1),P4_arr(7:9,2),'r');
x = linspace(0,0.0000004,100);
y1 = 108028*x + 0.0128;
y2 = 150120*x + 0.0049;
plot(x,y1,'r');
plot(x,y2,'b');
title('F1 - P4');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 108028x + 0.0128','y2 = 150120x + 0.0049');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P5
figure(5);
hold on
scatter(P5_arr(1:6,1),P5_arr(1:6,2),'b');
scatter(P5_arr(7:9,1),P5_arr(7:9,2),'r');
x = linspace(0,0.0000001,100);
y1 = 269951*x + 0.0019;
y2 = 374440*x + 0.001;
plot(x,y1,'r');
plot(x,y2,'b');
title('F1 - P5');
xlabel('Energia');
ylabel('V (pic)');
legend('No trenca','Trenca','y1 = 269951x + 0.0019','y2 = 374440x + 0.001');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off