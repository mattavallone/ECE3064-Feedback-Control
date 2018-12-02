%% Feedback HW #6
% Matthew Avallone

%% 3.49 d
clear;
sys = @(p) tf(p,[1,1.4+p,1+1.4*p,p]);

i = [0.1,0.5,0.75,1,5,10,50,1000];

for k = 1:length(i)
    hold on
    P = i(k);
    step(sys(P)); 
end
legend('p = 0.1','p = 0.5','p = 0.75','p = 1','p = 5','p = 10','p = 50','p = 1000')

% Once p reaches a value greater than 1, the pole at -p seems to cease
% having much affect on the step response