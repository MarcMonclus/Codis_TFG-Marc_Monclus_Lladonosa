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
scatter(P1_arr(1:3,1),P1_arr(1:3,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P1_arr(4:6,1),P1_arr(4:6,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 's');
scatter(P1_arr(7:9,1),P1_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 'd');
x = linspace(0,0.02,100);
y = 28.265*x.^(0.5273);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F1 - P1','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10→No trenca','15→No trenca','20→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(2);
hold on
scatter(P1_arr(1:6,1),P1_arr(1:6,2),80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P1_arr(7:9,1),P1_arr(7:9,2),80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.02,100);
y1 = 15.621*x.^(0.3914);
y2 = 26.036*x.^(0.5203);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F1 - P1','FontSize', 15, 'FontWeight', 'bold');
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
y = 0.9027*x.^(0.0177);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F1 - P2','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10→No trenca','15→No trenca','20→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(4);
hold on
scatter(P2_arr(1:6,1),P2_arr(1:6,2),80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P2_arr(7:9,1),P2_arr(7:9,2),80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.002,100);
y1 = 3.2163*x.^(0.1843);
y2 = 0.5416*x.^(-0.047);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F1 - P2','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('No trenca','Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P3
figure(5);
hold on
scatter(P3_arr(1:3,1),P3_arr(1:3,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P3_arr(4:6,1),P3_arr(4:6,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 's');
scatter(P3_arr(7:9,1),P3_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 'd');
x = linspace(0,0.0000008,100);
y = 531.86*x.^(0.631);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F1 - P3','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10→No trenca','15→No trenca','20→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(6);
hold on
scatter(P3_arr(1:6,1),P3_arr(1:6,2),80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P3_arr(7:9,1),P3_arr(7:9,2),80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.0000008,100);
y1 = 177.05*x.^(0.5513);
y2 = 95.961*x.^(0.5326);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F1 - P3','FontSize', 15, 'FontWeight', 'bold');
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
y = 747.92*x.^(0.6458);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F1 - P4','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10→No trenca','15→No trenca','20→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(8);
hold on
scatter(P4_arr(1:6,1),P4_arr(1:6,2),80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P4_arr(7:9,1),P4_arr(7:9,2),80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.0000004,100);
y1 = 204.77*x.^(0.559);
y2 = 211.09*x.^(0.5757);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F1 - P4','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('No trenca','Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

%% P5
figure(9);
hold on
scatter(P5_arr(1:3,1),P5_arr(1:3,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 'o');
scatter(P5_arr(4:6,1),P5_arr(4:6,2), 80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b','Marker', 's');
scatter(P5_arr(7:9,1),P5_arr(7:9,2), 80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r','Marker', 'd');
x = linspace(0,0.0000001,100);
y = 1884.1*x.^(0.6979);
plot(x,y,'k', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F1 - P5','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10→No trenca','15→No trenca','20→Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off

figure(10);
hold on
scatter(P5_arr(1:6,1),P5_arr(1:6,2),80, 'filled', 'MarkerFaceColor', 'b', 'MarkerEdgeColor', 'k');
scatter(P5_arr(7:9,1),P5_arr(7:9,2),80, 'filled', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
x = linspace(0,0.0000001,100);
y1 = 2310.2*x.^(0.7095);
y2 = 1628.8*x.^(0.69);
plot(x,y1,'r', 'LineWidth', 0.8);
plot(x,y2,'b', 'LineWidth', 0.8);
set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('F1 - P5','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('No trenca','Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off