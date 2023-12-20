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
scatter(P1_arr(1:3,1),P1_arr(1:3,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P1_arr(4:6,1),P1_arr(4:6,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 's');
scatter(P1_arr(7:9,1),P1_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 'd');
x = linspace(0,0.02,100);
y = 20.626*x.^(0.46);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F2 - P1','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10→No trenca','20→Trenca','30→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(2);
hold on
scatter(P1_arr(1:3,1),P1_arr(1:3,2),80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P1_arr(4:9,1),P1_arr(4:9,2),80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.02,100);
y1 = 6.9287*x.^(0.2162);
y2 = 28.71*x.^(0.582);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F2 - P1','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('No trenca','Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P2
figure(3);
hold on
scatter(P2_arr(1:3,1),P2_arr(1:3,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P2_arr(4:6,1),P2_arr(4:6,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 's');
scatter(P2_arr(7:9,1),P2_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 'd');
x = linspace(0,0.005,100);
y = 10.996*x.^(0.3914);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F2 - P2','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10→No trenca','20→Trenca','30→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(4);
hold on
scatter(P2_arr(1:3,1),P2_arr(1:3,2),80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P2_arr(4:9,1),P2_arr(4:9,2),80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.005,100);
y1 = 10.173*x.^(0.3643);
y2 = 24.343*x.^(0.5357);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F2 - P2','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('No trenca','Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P3
figure(5);
hold on
scatter(P3_arr(1:3,1),P3_arr(1:3,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P3_arr(4:6,1),P3_arr(4:6,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 's');
scatter(P3_arr(7:9,1),P3_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 'd');
x = linspace(0,0.6,100);
y = 26.637*x.^(0.5156);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F2 - P3','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10→No trenca','20→Trenca','30→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(6);
hold on
scatter(P3_arr(1:3,1),P3_arr(1:3,2),80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P3_arr(4:9,1),P3_arr(4:9,2),80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.6,100);
y1 = 33.129*x.^(0.5891);
y2 = 19.756*x.^(0.4788);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F2 - P3','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('No trenca','Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P4
figure(7);
hold on
scatter(P4_arr(1:3,1),P4_arr(1:3,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P4_arr(4:6,1),P4_arr(4:6,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 's');
scatter(P4_arr(7:9,1),P4_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 'd');
x = linspace(0,0.08,100);
y = 42.099*x.^(0.5991);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F2 - P4','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10→No trenca','20→Trenca','30→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(8);
hold on
scatter(P4_arr(1:3,1),P4_arr(1:3,2),80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P4_arr(4:9,1),P4_arr(4:9,2),80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.08,100);
y1 = 45.513*x.^(0.6146);
y2 = 33.666*x.^(0.5648);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F2 - P4','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('No trenca','Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P5
figure(9);
hold on
scatter(P5_arr(1:3,1),P5_arr(1:3,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P5_arr(4:6,1),P5_arr(4:6,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 's');
scatter(P5_arr(7:9,1),P5_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 'd');
x = linspace(0,0.02,100);
y = 21.941*x.^(0.4781);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F2 - P5','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10→No trenca','20→Trenca','30→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(10);
hold on
scatter(P5_arr(1:3,1),P5_arr(1:3,2),80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P5_arr(4:9,1),P5_arr(4:9,2),80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.02,100);
y1 = 28.357*x.^(0.5026);
y2 = 11.445*x.^(0.4335);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F2 - P5','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('No trenca','Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off