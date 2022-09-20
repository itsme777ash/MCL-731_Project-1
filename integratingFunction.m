function dxdt = integratingFunction(t,x)
%INTEGRATINGFUNCTION Summary of this function goes here
%   Detailed explanation goes here
m1 = 10^11;
m2 = 10^11;
G = 6.67*(10^(-11));
x1 = x(1);
x2 = x(2);
y1 = x(3);
y2 = x(4);
z1 = x(5);
z2 = x(6);
x1dot = x(7);
x2dot = x(8);
y1dot = x(9);
y2dot = x(10);
z1dot = x(11);
z2dot = x(12);
rx = x2-x1;
ry = y2-y1;
rz = z2-z1;
dxdt = zeros(12,1);
dxdt(1) = x1dot;
dxdt(2) = x2dot;
dxdt(3) = y1dot;
dxdt(4) = y2dot;
dxdt(5) = z1dot;
dxdt(6) = z2dot;
dxdt(7) = (G*m2*rx)/(((rx^2)+(ry^2)+(rz^2))^1.5);
dxdt(8) = -(G*m1*rx)/(((rx^2)+(ry^2)+(rz^2))^1.5);
dxdt(9) = (G*m2*ry)/(((rx^2)+(ry^2)+(rz^2))^1.5);
dxdt(10) = -(G*m1*ry)/(((rx^2)+(ry^2)+(rz^2))^1.5);
dxdt(11) = (G*m2*rz)/(((rx^2)+(ry^2)+(rz^2))^1.5);
dxdt(12) = -(G*m1*rz)/(((rx^2)+(ry^2)+(rz^2))^1.5);
end


