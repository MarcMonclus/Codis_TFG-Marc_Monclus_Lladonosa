clear all;
close all;

x = linspace(0,0.02,100);
s = 12.938*x.^(0.4265);
q = 15.397*x.^(0.4253);
p = 16.566*x.^(0.4102);

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
title('F1','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10 No Trenca','15 No Trenca','20 Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');