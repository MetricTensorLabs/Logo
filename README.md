# Logo

<p align="center">
  <img src="logo.png" width=25%><br>
  <b>METRIC TENSOR LABS</b>
</p>

## Numerical Specifications
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

% Other considerations
% 1. Numerical integrator: RK4
% 2. Camera view: XZ plane
% 3. Axes: Equal axes
```
