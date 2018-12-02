%% Feedback Prelab Lab 2
% Matthew Avallone

% 4

h1 = tf(1,[1,3]);
figure (1)
step(h1);
title('First Order Step Response')
h2 = tf(1,[1,3,9]);
figure(2)
step(h2);
title('Second Order Step Response')