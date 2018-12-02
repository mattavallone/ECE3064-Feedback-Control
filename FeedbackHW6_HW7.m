%% Feedback HW #6 and #7
% Matthew Avallone

%% 3.49 d
clear;
sys = @(p) tf(p,[1,1.4+p,1+1.4*p,p]);

i = [0.1,0.5,0.75,1,5,10,50,1000]; % values for p
figure(1)
for k = 1:length(i)
    hold on
    P = i(k);
    step(sys(P)); 
end
legend('p = 0.1','p = 0.5','p = 0.75','p = 1','p = 5','p = 10','p = 50','p = 1000')

% Once p reaches a value greater than 1, the pole at -p seems to cease
% having much affect on the step response

%% 3.36 e
clear;
n = [200 400 1000 2000]; % values for K
sys = @(K) tf(K/600000,[1,0.0333,K/600000]);

figure(2)
for i = 1:length(n)
    hold on
    k = n(i);
    step(sys(k));
end
legend('K = 200','K = 400','K = 1000','K = 2000')

%% 3.55
clear;
n = [1,2,4,5,10,100];
X = @(k) roots([1,5,10,10,5,k]);
sys = @(k) tf(1,[1,5,10,10,5,k]);

figure(3)
for i = 1:length(n)
    hold on
    K = n(i);
    rlocus(sys(K))
end
legend('K = 1','K = 2','K = 4','K = 5','K = 10','K = 100')