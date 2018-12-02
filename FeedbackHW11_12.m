%% Feedback HWs 11 and 12
% Matthew Avallone

%% 5.5

%a
num = [1];
den = [1 3 10];
sys = tf(num,den);
figure(1)
subplot(2,3,1)
rlocus(sys);
title('a')
%b
num = [1];
den = [1 3 10 0];
sys = tf(num,den);
subplot(2,3,2)
rlocus(sys);
title('b')
%c
num = [1,2,8];
den = [1 2 10 0];
sys = tf(num,den);
subplot(2,3,3)
rlocus(sys);
title('c')
%d
num = [1,2,12];
den = [1 2 10 0];
sys = tf(num,den);
subplot(2,3,4)
rlocus(sys);
title('d')
%e
num = [1 0 1];
den = [1 0 4 0];
sys = tf(num,den);
subplot(2,3,5)
rlocus(sys);
title('e')
%f
num = [1 0 4];
den = [1 0 1 0];
sys = tf(num,den);
subplot(2,3,6)
rlocus(sys);
title('f')

%% 5.13

numd = [1 1];
dend = [1 13];
sysd = tf(numd,dend);
numg = [1 0 81];
deng = [1 0 100 0 0];
sysg = tf(numg,deng);
numt = conv(numd,numg);
dent = conv(dend,deng);
syst = tf(numt,dent);
figure(2)
rlocus(syst)
title('5.13')

%% 5.17

dent = conv([1 0],[1 0 144]);
numt = [1 0 9];
syst = tf(numt,dent);
figure(3)
rlocus(syst)
title('5.17')

%% 5.32

dent = conv([1 0 0],[1 12 40]);
numt = [100 100];
syst = tf(numt,dent);
figure(4)
rlocus(syst)
title('5.32')

%% 5.25

num = [1 0.1];
den = conv([1 0.0145 0],[1, 9, 18]);
sys = tf(num,den);
figure(5)
subplot(1,2,1)
rlocus(sys)
title('5.25')
subplot(1,2,2)
step(sys)

%% 5.40

num = conv([6 0],[1 51 550])+55000;
den = conv(conv([55000 0],[1 51 550]),[1 0 0]);
sys = tf(num, den);
figure(6)
rlocus(sys)
title('5.40')