clear all;
close all;

x = linspace(0,0.8,100);
s = 29.644*x.^(0.5421);
q = 35.08*x.^(0.5578);
p = 26.158*x.^(0.4847);

plot(x,s,'g', 'LineWidth', 0.8);
grid on;
hold on;

plot(x,q,'b', 'LineWidth', 0.8);
grid on;
hold on;

plot(x,p,'r', 'LineWidth', 0.8);
grid on;
hold on;

set(gca, 'FontSize', 12, 'FontWeight', 'bold');
title('N2','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('30 No Trenca','60 No Trenca','90 Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');