%% Feedback Prelab 4
% Matthew Avallone

%% 4

num = 1.6;
den = [0.032 1 0];
sys = tf(num,den);
sisotool(sys)


% D(s) = 17.78 (s+1)(s+0.03) / (s+20)(s+0.01778)