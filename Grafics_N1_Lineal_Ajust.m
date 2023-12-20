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

%% P2
figure(1);
hold on;

x = linspace(0, 0.015, 100);
y1 = 136.77 * x + 0.55;
y2 = 136.77 * x + 0;
y_lim = 3;

roig = [0.86, 0.02, 0.02];  
blau = [0.35, 0.89, 0.96];   
verd = [0.37, 0.88, 0.33]; 

fill([x, fliplr(x)], [y1, ones(size(y1)) * y_lim], roig, 'FaceAlpha', 0.7);
fill([x, fliplr(x)], [y1, fliplr(y2)], blau, 'FaceAlpha', 0.9);
fill([x, fliplr(x)], [y2, zeros(size(y2))], verd, 'FaceAlpha', 0.7);

scatter(P2_arr(1:6, 1), P2_arr(1:6, 2), 70, 'filled', 'MarkerFaceColor', 'w', 'MarkerEdgeColor', 'k');
scatter(P2_arr(7:9, 1), P2_arr(7:9, 2), 70, 'filled', 'MarkerFaceColor', 'k', 'MarkerEdgeColor', 'k');

plot(x, y1, 'k', 'LineWidth', 0.8);
plot(x, y2, 'k', 'LineWidth', 0.8);

set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('N1 - P2','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('Zona de trencamnet', 'Zona intermèdia', 'Zona de seguretat', 'No trenca', 'Trenca','FontSize', 13, 'FontWeight', 'bold');

rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');
hold off;