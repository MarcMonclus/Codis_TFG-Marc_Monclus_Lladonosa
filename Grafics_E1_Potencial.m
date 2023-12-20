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
scatter(P1_arr(1:3,1),P1_arr(1:3,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P1_arr(4:6,1),P1_arr(4:6,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 's');
scatter(P1_arr(7:9,1),P1_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 'd');
x = linspace(0,0.3,100);
y = 39.763*x.^(0.5794);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('E1 - P1','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10→No trenca','15→No trenca','20→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(2);
hold on
scatter(P1_arr(1:6,1),P1_arr(1:6,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P1_arr(7:9,1),P1_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.3,100);
y1 = 99.054*x.^(0.8587);
y2 = 33.266*x.^(0.5232);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('E1 - P1','FontSize', 15, 'FontWeight', 'bold');
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
x = linspace(0,0.002,100);
y = 1.6352*x.^(0.0999);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('E1 - P2','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10→No trenca','15→No trenca','20→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [0, 0, 0.002,1.2], 'EdgeColor', 'k');
hold off

figure(4);
hold on
scatter(P2_arr(1:6,1),P2_arr(1:6,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P2_arr(7:9,1),P2_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.002,100);
y1 = 3.9666*x.^(0.215);
y2 = 0.9843*x.^(0.0348);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('E1 - P2','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('No trenca','Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [0, 0, 0.002,1.2], 'EdgeColor', 'k');
hold off

%% P3
figure(5);
hold on
scatter(P3_arr(1:3,1),P3_arr(1:3,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P3_arr(4:5,1),P3_arr(4:5,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 's');
scatter(P3_arr(6:7,1),P3_arr(6:7,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 'd');
x = linspace(0,0.0000006,100);
y = 805.98*x.^(0.6747);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('E1 - P3','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10→No trenca','15→No trenca','20→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(6);
hold on
scatter(P3_arr(1:5,1),P3_arr(1:5,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P3_arr(6:7,1),P3_arr(6:7,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.0000006,100);
y1 = 25.16*x.^(0.4518);
y2 = 376.91*x.^(0.6201);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('E1 - P3','FontSize', 15, 'FontWeight', 'bold');
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
x = linspace(0,0.0000004,100);
y = 271.27*x.^(0.5993);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('E1 - P4','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10→No trenca','15→No trenca','20→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(8);
hold on
scatter(P4_arr(1:6,1),P4_arr(1:6,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P4_arr(7:9,1),P4_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.0000004,100);
y1 = 143.59*x.^(0.5629);
y2 = 403.62*x.^(0.6221);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('E1 - P4','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('No trenca','Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P5
figure(9);
hold on
scatter(P5_arr(1:2,1),P5_arr(1:2,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P5_arr(3:5,1),P5_arr(3:5,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 's');
scatter(P5_arr(6:7,1),P5_arr(6:7,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 'd');
x = linspace(0,1.6e-7,100);
y = 3628.7*x.^(0.7505);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('E1 - P5','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10→No trenca','15→No trenca','20→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(10);
hold on
scatter(P5_arr(1:5,1),P5_arr(1:5,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P5_arr(6:7,1),P5_arr(6:7,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,2e-7,100);
y1 = 1.2278*x.^(0.3068);
y2 = 5842*x.^(0.7757);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('E1 - P5','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('No trenca','Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off