% Lorenz attractor for logo
% https://en.wikipedia.org/wiki/Lorenz_system
% Rishav, Metric Tensor Labs (2020)

clc
clear
close all

% Simulation parameters
start_time = 0;
stop_time = 3.3;
dt = 0.01;
time  = start_time:dt:stop_time; 

% System parameters 
rho = 28;
beta = 8 / 3;
sigma = 10;

% Initial state
state = zeros(3,length(time));
state(:,1) = [1.0; 1.0; 20.0];

% RK4 loop
for t = 1:length(time)-1
  fn = @(t,y)lorenz_attractor(y, rho, beta, sigma);
  state(:,t+1) = rk4(fn, state(:,t), dt, t);
end

% Plot
plot3(state(1,:), state(2,:), state(3,:), 'LineWidth', 3);
set(gca,'xtick',[]); h = gca; h.XAxis.Visible = 'off';
set(gca,'ytick',[]); h = gca; h.YAxis.Visible = 'off';
set(gca,'ztick',[]); h = gca; h.ZAxis.Visible = 'off';
axis equal;
view([0, 0]);

%%%%%%%%%%%%%%%%%%%
%    FUNCTIONS    %
%%%%%%%%%%%%%%%%%%%

function state_dot = lorenz_attractor(state, rho, beta, sigma)
x = state(1); 
y = state(2); 
z = state(3);

% Lorenz equations
x_dot = sigma * (y - x);
y_dot = x * (rho - z) - y; 
z_dot = x * y - beta * z;
    
state_dot = [x_dot, y_dot, z_dot]';
end

function y_update = rk4(f,y,dt,t)
k1 = f(t, y);
k2 = f(t + 0.5 * dt, y + 0.5 * dt * k1);
k3 = f(t + 0.5 * dt, y + 0.5 * dt * k2);
k4 = f(t + dt, y + dt * k3);
    
K = (1 / 6) * (k1 + 2 * k2 + 2 * k3 + k4); 
y_update = y + K * dt; 
end
