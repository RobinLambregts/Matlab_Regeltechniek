%diary naam.txt -> onnodig in een script

tau = 1e-4;
tel = [tau 0]
noem = [tau 1];
model1 = tf(tel, noem)

step(model1)
figure, impulse(model1)

figure
bode(model1)
figure
nyquist(model1)
figure
nichols(model1)