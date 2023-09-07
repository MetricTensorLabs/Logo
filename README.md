# Logo

<p align="center">
  <img src="logo.png" width=25%><br>
  <b>Metric Tensor Labs</b></br>
  <i>Applied mathematics and advanced instrumentation for guidance, navigation, and control.</i>
</p>

## Numerical specifications
```matlab
% Lorenz equations
x_dot = sigma * (y - x)
y_dot = x * (rho - z) - y
z_dot = x * y - beta * z

% System parameters 
rho = 28
beta = 8 / 3
sigma = 10

% Initial conditions
x = 1.0
y = 1.0
z = 20.0

% Simulation parameters
stop_time = 3.14
dt = 0.01

% Other specifications
% 1. Integrator  : RK4
% 2. Camera view : XZ plane
% 3. Axes        : Equal axes
% 4. Colour      : #0072bd RGB
```
