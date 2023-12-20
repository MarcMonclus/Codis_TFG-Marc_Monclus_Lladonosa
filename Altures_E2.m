clear all;
close all;

x = linspace(0,1.6,100);
s = 25.309*x.^(0.5308);
q = 31.588*x.^(0.5215);
p = 36.375*x.^(0.5352);

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
title('E2','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10 No Trenca','20 Trenca','30 Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');