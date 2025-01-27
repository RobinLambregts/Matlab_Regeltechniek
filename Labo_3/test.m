% Define the transfer functions
sys1 = tf(1, [40 1]);
sys2 = tf(1, [10 1]);
sys3 = tf(1, [0.5 1]);
sys4 = tf(20, [0 1]);

% Sum of the transfer functions
sys_sum = sys1 + sys2 + sys3+ sys4;

% Plot the Bode plots
figure;
bode(sys1, 'r', sys2, 'g', sys3, 'b', sys4, 'y', sys_sum, 'k');
legend('1/(40p+1)', '1/(10p+1)', '1/(0.5p+1)', '20', 'Sum');
grid on;