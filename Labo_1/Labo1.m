%diary naam.txt -> onnodig in een script
clear all
close all

wn = 1e4;
z1 = 1;
z2 = 0.707
z3 = 0.3
z4 = 0.05
tel1 = [wn^2];
noem1 = [1 2*z1*wn wn^2];
noem2 = [1 2*z2*wn wn^2];
noem3 = [1 2*z3*wn wn^2];
noem4 = [1 2*z4*wn wn^2];
m2_1 = tf(tel1,noem1)
m2_2 = tf(tel1,noem2)
m2_3 = tf(tel1,noem3)
m2_4 = tf(tel1,noem4)

tijd = [0:0.00001:0.004];
figure
step(m2_1, m2_2, m2_3, m2_4, tijd), grid on, legend

figure
bode(m2_3), grid on, legend
figure
nyquist(m2_1, m2_2, m2_3, m2_4)
figure
nichols(m2_1, m2_2, m2_3, m2_4)