%% Feedback Lab 4

clear;clc;
%Plant
nump = 1.65;
denp = conv([1 0], [0.032 1]);
plant = tf(nump,denp);

figure(1)
subplot(1,2,1)
margin(plant)
%sisotool(plant)

%Lead
numd = [1 64];
dend = [1 100];
lead  = tf(numd,dend);

%Lag
numg = [1 0.5];
deng = [1 0.05];
lag = tf(numg,deng);

%Gain
K = 3.41;

%Closed-Loop System
controller = K*lead*lag;
CLsys = plant*controller / (1 + plant*controller);
CLsys_error = 1 / (1 + plant*controller);
subplot(1,2,2)
margin(CLsys)

figure(2)
subplot(1,2,1)
lsim(CLsys,[0:0.01:100],[0:0.01:100]) % ramp input
title('Closed Loop System')
subplot(1,2,2)
lsim(CLsys_error,[0:0.01:100],[0:0.01:100]) %tracking error to ramp
title('Closed-Loop System Error')

figure(3)
step(CLsys)

