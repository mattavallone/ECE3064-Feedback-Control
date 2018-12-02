%% Feedback HW 13
% Matthew Avallone

%% 6.3

%a
num = 2000;
den = [2 200 0];
sys = tf(num,den);
figure(1)
subplot(1,3,1)
bode(sys)
title('a')
%b
num = 100;
den = [0.05 0.6 1 0];
sys = tf(num,den);
subplot(1,3,2)
bode(sys)
title('b')
%c
s = tf('s');
sys = 1 / (s*(s+1)*(0.02*s+1));
subplot(1,3,3)
bode(sys)
title('c')
%d
s = tf('s');
sys = 1 / ((s+1)^2*(s^2+2*s+4));
figure(2)
subplot(1,3,1)
bode(sys)
title('d')
%e
s = tf('s');
sys = 10*(s+4) / (s*(s+1)*(s^2+2*s+5));
subplot(1,3,2)
bode(sys)
title('e')
%f
s = tf('s');
sys = 1000*(s+0.1) / (s*(s+1)*(s^2+8*s+64));
subplot(1,3,3)
bode(sys)
title('f')
%g
s = tf('s');
sys = (s+5)*(s+3) / (s*(s+1)*(s^2+s+4));
figure(3)
subplot(1,3,1)
bode(sys)
title('g')
%h
s = tf('s');
sys = 4*s*(s+10) / ((s+100)*(4*s^2+5*s+4));
subplot(1,3,2)
bode(sys)
title('h')
%i
s = tf('s');
sys = s / ((s+1)*(s+10)*(s^2+2*s+2500));
subplot(1,3,3)
bode(sys)
title('i')