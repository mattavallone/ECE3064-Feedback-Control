%% Feedback HW 15
% Matthew Avallone

%% 23

clc;clear;
%a
s = tf('s');
sys = 1 / (s+1)^3;
figure(6)
subplot(3,3,1)
nyquist(sys)
title('a')
%b
s = tf('s');
sys = 1 / (s*(s+1));
subplot(3,3,2)
nyquist(sys)
title('b')
%c
s = tf('s');
sys = 1 / ((s-1)*(s+1)^2);
subplot(3,3,3)
nyquist(sys)
title('c')
%d
s = tf('s');
sys = 1 / ((s-1)*(s+2));
subplot(3,3,4)
nyquist(sys)
title('d')
%e
s = tf('s');
sys = 2*(s+1)*(s^2-4*s+1) / (s-1)^3;
subplot(3,3,5)
nyquist(sys)
title('e')
%f
s = tf('s');
sys = (s+1)*(s^2+3)/(4*(s-1)^3);
subplot(3,3,6)
nyquist(sys)
title('f')
%g
s = tf('s');
sys = (s^2+1)/(s-1)^3;
subplot(3,3,7)
nyquist(sys)
title('g')