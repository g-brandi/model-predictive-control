function [A,B] = ttStateJacobian(x,u)
% Definizione degli stati
theta = x(3);  
beta = x(4);

% Definizione degli ingressi
alpha = u(1);
v = u(2);

% Parametri del sistema
L = 1;
L1 = 6;
L2 = 10;

% Inizializzazione
A = zeros(4,4);
B = zeros(4,2);

% Calcolo della matrice A
A(1,3) = v*cos(beta)*(1 + L/L1*tan(beta)*tan(alpha))*(-sin(theta));
A(1,4) = v*(-sin(beta) + L/L1*cos(beta)*tan(alpha))*cos(theta);
A(2,4) = v*(-sin(beta) + L/L1*cos(beta)*tan(alpha))*sin(theta);
A(2,3) = v*cos(beta)*(1 + L/L1*tan(beta)*tan(alpha))*cos(theta);
A(3,4) = v*(cos(beta)/L2 + L/L1/L2*sin(beta)*tan(alpha));
A(4,4) = v*(-cos(beta)/L2 - L/L1/L2*sin(beta)*tan(alpha));

% Calcolo della matrice B
B(1,1) = v*cos(beta)*L/L1*tan(beta)/cos(alpha)^2*cos(theta);
B(2,1) = v*cos(beta)*L/L1*tan(beta)/cos(alpha)^2*sin(theta);
B(1,2) = cos(beta)*(1 + L/L1*tan(beta)*tan(alpha))*cos(theta);
B(2,2) = cos(beta)*(1 + L/L1*tan(beta)*tan(alpha))*sin(theta);
B(3,1) = v*(-L/L1/L2*cos(beta)/cos(alpha)^2);
B(3,2) = sin(beta)/L2 - L/L1/L2*cos(beta)*tan(alpha);
B(4,1) = v*(1/cos(alpha)^2/L1 + L/L1/L2*cos(beta)/cos(alpha)^2);
B(4,2) = tan(alpha)/L1 - sin(beta)/L2 + L/L1/L2*cos(beta)*tan(alpha);

end