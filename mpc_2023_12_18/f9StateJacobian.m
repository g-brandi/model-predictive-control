function [A,B] = f9StateJacobian(x,u)
    
    % Parametri
    M = 1;
    L1 = 10;
    L2 = 5;
    g = 9.81;
    J = 0.5*M*L1;

    % Inizializzazione
    A = zeros(6,6);
    B = zeros(6,2);

    % Matrice A
    A(1,4) = 1;
    A(2,5) = 1;
    A(3,6) = 1;
    A(4,3) = (-cos(x(3)) * (u(1)+u(2)))/M;
    A(5,3) = (-sin(x(3)) * (u(1)+u(2)))/M;
    
    % Matrice B
    B(4,1) = -sin(x(3))/M;
    B(4,2) = -sin(x(3))/M;
    B(5,1) = cos(x(3))/M;
    B(5,2) = cos(x(3))/M;
    B(6,1) = -L2/J;
    B(6,2) = L2/J;
end