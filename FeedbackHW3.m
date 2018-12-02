%% Feedback HW3
% Matthew Avallone

%% 2b

x = 0:10;
[t,y] = ode23('odefun',x,[1,0]);

figure(1)
plot(t,y(:,1),'-o',t,y(:,2))
title('2b')

%% 2c
% h1 = 0.1;
% h2 = 0.01;
% h2 = 0.001;
ax1 = @(t) -2*pi*sin(2*pi.*t);
ax2 = @(t) -4*pi^2*cos(2*pi.*t);
b1x1 = @(t,h) (cos(2*pi.*(t+h)) - cos(2*pi.*t)) ./ 2;
b1x2 = @(t) -4*pi^2*cos(2*pi.*t);
b2x1 =  @(t,h) (cos(2*pi.*(t+h)) - cos(2*pi.*(t-h))) ./ (2.*h);
b2x2 = @(t) -4*pi^2*cos(2*pi.*t);

k = 0:5;
h4 = [0.1, 0.01, 0.001];

for i = 1:3;
figure(2)
hold on
plot(k,ax1(k),k,b1x1(k,h4(i)),k,b2x1(k,h4(i)))
legend('h = 0.1','h = 0.01','h = 0.001');
title('2c dx1/dt')

figure(3)
hold on
plot(k,ax2(k),k,b1x2(k),k,b2x2(k))
legend('h = 0.1','h = 0.01','h = 0.001');
title('2c dx2/dt')
end