function M = fcn(yaw,pitch,roll)

% Rotate a graphics object along Z-Y-X axes in the earth frane 
% input angles are in radians

% rotate along earth z-axis
m1 = [cos(yaw) -sin(yaw) 0; sin(yaw) cos(yaw) 0; 0 0 1];

% rotate along earth y-axis
m2 = [cos(pitch) 0 sin(pitch); 0 1 0; -sin(pitch) 0 cos(pitch)];

% rotate along earth x-axis
m3 = [1 0 0; 0 cos(roll) -sin(roll); 0 sin(roll) cos(roll)];

% 3x3 rotation matrix
M = m3*m2*m1;

