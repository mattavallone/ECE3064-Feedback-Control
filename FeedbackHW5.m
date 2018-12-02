%% Feedback HW5
% Matthew Avallone

%% 3.32 c
K = 3.02;
Mpr = 11.1; %relaxed max overshoot percent calculated
tpr = 2.21; %relaxed peak time calculated
t = 0:0.1:5;
sys = tf(K,[1,2,K]); %system transfer function
v = step(sys,t); %system step response
figure(1)
plot(t,v)
v_ss = dcgain(sys); %steady-state value
Mp = (max(v) - v_ss)*100
index = max(find(v==(max(v))));
tp = t(index)
title('Step Response')
xlabel('time (s)')
grid on;

MpError = abs(Mp-Mpr)/Mp * 100 % percent error for overshoot
tpError = abs(tp-tpr)/tp * 100 % percent error for peak time

%% 3.35 g
K = [0.5,1,2];
t = 0:0.1:20;

for i = 1:length(K)
warning('off','MATLAB:legend:IgnoringExtraEntries') % Hiding a warning
hold on
c = K(i);
sys = @(k) tf(k,[1,2,k]); %system transfer function
pos = @(k) step(sys(k),t); %system step response
figure(2)
plot(t,pos(c))
pos_ss(i) = dcgain(sys(c)); %steady-state value
title('Step Response')
xlabel('time (s)')
legend('K = 0.5','K = 1', 'K = 2')
grid on;
Mp2(i) = (max(pos(c)) - pos_ss(i))*100; % as percentages
%inRange = v(c) > 0.9 && v(c) < 0.92
index(i) = max(find(pos(c)==(max(pos(c)))));
%index(i) = max(find(inRange));
tp2(i) = t(index(i));
end
K
Mp2
tp2