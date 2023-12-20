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
scatter(P1_arr(1:3,1),P1_arr(1:3,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P1_arr(4:6,1),P1_arr(4:6,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 's');
scatter(P1_arr(7:9,1),P1_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 'd');
x = linspace(0,0.8,100);
y = 30.638*x.^(0.5629);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('N2 - P1','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('30→No trenca','60→No trenca','90→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(2);
hold on
scatter(P1_arr(1:6,1),P1_arr(1:6,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P1_arr(7:9,1),P1_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.8,100);
y1 = 36.914*x.^(0.6814);
y2 = 30.031*x.^(0.5545);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('N2 - P1','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('No trenca','Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P2
figure(3);
hold on
scatter(P2_arr(1:3,1),P2_arr(1:3,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P2_arr(4:6,1),P2_arr(4:6,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 's');
scatter(P2_arr(7:9,1),P2_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 'd');
x = linspace(0,0.04,100);
y = 18.68*x.^(0.4906);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('N2 - P2','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('30→No trenca','60→No trenca','90→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(4);
hold on
scatter(P2_arr(1:6,1),P2_arr(1:6,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P2_arr(7:9,1),P2_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.04,100);
y1 = 15.225*x.^(0.4332);
y2 = 17.492*x.^(0.4826);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('N2 - P2','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('No trenca','Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P3
figure(5);
hold on
scatter(P3_arr(1:3,1),P3_arr(1:3,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P3_arr(4:5,1),P3_arr(4:5,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 's');
scatter(P3_arr(6:7,1),P3_arr(6:7,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 'd');
x = linspace(0,0.7,100);
y = 41.795*x.^(0.5102);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('N2 - P3','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('30→No trenca','60→No trenca','90→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(6);
hold on
scatter(P3_arr(1:5,1),P3_arr(1:5,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P3_arr(6:7,1),P3_arr(6:7,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.7,100);
y1 = 94.406*x.^(0.577);
y2 = 36.138*x.^(0.5304);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('N2 - P3','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('No trenca','Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P4
figure(7);
hold on
scatter(P4_arr(1:3,1),P4_arr(1:3,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P4_arr(4:6,1),P4_arr(4:6,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 's');
scatter(P4_arr(7:9,1),P4_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 'd');
x = linspace(0,0.2,100);
y = 29.107*x.^(0.5436);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('N2 - P4','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('30→No trenca','60→No trenca','90→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(8);
hold on
scatter(P4_arr(1:6,1),P4_arr(1:6,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P4_arr(7:9,1),P4_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.2,100);
y1 = 27.564*x.^(0.5343);
y2 = 34.264*x.^(0.5876);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('N2 - P4','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('No trenca','Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P5
figure(9);
hold on
scatter(P5_arr(1:3,1),P5_arr(1:3,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P5_arr(4:6,1),P5_arr(4:6,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P5_arr(7:9,1),P5_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 'd');
x = linspace(0,0.03,100);
y = 15.276*x.^(0.3962);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('N2 - P5','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('30→No trenca','60→No trenca','90→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(10);
hold on
scatter(P5_arr(1:6,1),P5_arr(1:6,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P5_arr(7:9,1),P5_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.03,100);
y1 = 8.9909*x.^(0.3241);
y2 = 23.51*x.^(0.4733);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('N2 - P5','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('No trenca','Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off