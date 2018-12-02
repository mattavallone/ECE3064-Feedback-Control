%% Feedback Prelab Week 2
% Matthew Avallone

%2d

sys = tf(1,[3.23e-8,2.03e-5,6.37e-3,1]);
bode(sys);
title('Third Order Butterworth Filter')