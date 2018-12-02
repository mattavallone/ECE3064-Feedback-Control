%% Feedback HW 14
% Matthew Avallone

%% 53
clc;clear;
nump = 20;
denp = conv([1 0],[1 1]);
plant = tf(nump,denp);
figure(1)
subplot(1,2,1)
bode(plant)
title('Plant w/o Compensation')

numc = [1 0.3];
denc = [1 3];
lead = tf(numc,denc);
sys = plant*lead;
subplot(1,2,2)
bode(sys)
title('Plant with Lead Compensation')

%% 43
clc;clear;
K = 500; 
numc = K;
denc = 1;
controller = tf(numc,denc);
nump = [1 1];
denp = conv([1 0 0],[1 20 100]);
plant = tf(nump,denp);
OLsys = controller*plant; %open-loop TF

figure(2)
subplot(1,2,1)
bode(OLsys)
title('Open Loop System')

CLsys = controller*plant / (1 + controller*plant); %closed-loop TF
subplot(1,2,2)
bode(CLsys);
title('Closed Loop System')

%sisotool(OLsys)

%% 50

clc;clear;
 
numc = [1 10];
denc = [1 100];
controller = tf(numc,denc);

K = 200;
nump = K;
denp = conv(conv([1 0],[0.2 1]),[0.05 1]);
plant = tf(nump,denp);
OLsys = controller*plant; %open-loop TF
CLsys = controller*plant / (1 + controller*plant); %closed-loop TF

figure(3)
subplot(1,2,1)
bode(OLsys)
title('Open Loop System')

subplot(1,2,2)
bode(CLsys);
title('Closed Loop System')
damp(CLsys) %damping of closed-loop system
%sisotool(OLsys)

%% 51

clc;clear;

K = 5;
numc = [1 15];
denc = [1 250];
controller = tf(numc,denc);

nump = 50;
denp = conv([1 0],[0.2 1]);
plant = tf(nump,denp);
OLsys = K*controller*plant; %open-loop TF
CLsys = K*controller*plant / (1 + K*controller*plant); %closed-loop TF

figure(4)
subplot(1,2,1)
bode(OLsys)
title('Open Loop System')

subplot(1,2,2)
bode(CLsys);
title('Closed Loop System')

damp(CLsys) %damping of closed-loop system
figure(5)
step(CLsys)
%sisotool(OLsys)
