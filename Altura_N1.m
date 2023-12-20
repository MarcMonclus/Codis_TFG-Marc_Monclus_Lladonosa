clear all;
close all;

x = linspace(0,0.14,100);
s = 20.977*x.^(0.4684);
q = 24.09*x.^(0.467);
p = 18.17*x.^(0.424);

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
title('N1','FontSize', 15, 'FontWeight', 'bold');
xlabel('Energia','FontSize', 15, 'FontWeight', 'bold');
ylabel('Voltatge (V)','FontSize', 15, 'FontWeight', 'bold');
legend('10 No Trenca','15 No Trenca','20 Trenca','FontSize', 13, 'FontWeight', 'bold');
rectangle('Position', [gca().XLim(1), gca().YLim(1), diff(gca().XLim), diff(gca().YLim)], 'EdgeColor', 'k');