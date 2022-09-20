tstart = 0;
tend = 100;
n = 100000;
tspan = linspace(tstart,tend,n);
X1 = [0 0 0];
X2 = [1 3 2];
V1 = [0 0 5];
V2 = [5 0 0];
xinit = [X1(1);X2(1);X1(2);X2(2);X1(3);X2(3);V1(1);V2(1);V1(2);V2(2);V1(3);V2(3)];
%options = odeset('RelTol',1e-3,'AbsTol',1e-6);
[t,x] = ode45(@integratingFunction, tspan, xinit);

%plot3(x(:,1),x(:,3),x(:,5),x(:,2),x(:,4),x(:,6));
plot3(x(:,2)-x(:,1),x(:,4)-x(:,3),x(:,6)-x(:,5));