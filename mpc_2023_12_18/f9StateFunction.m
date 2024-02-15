function dxdt = f9StateFunction(x,u)

    % Parametri
    M = 1;
    L1 = 10;
    L2 = 5;
    g = 9.81;
    J = 0.5*M*L1;

    % Inizializzazione
    dxdt = zeros(6,1);

    % Aggiornamento
    dxdt(1) = x(4);
    dxdt(2) = x(5);
    dxdt(3) = x(6);
    dxdt(4) = (-sin(x(3))*(u(1)+u(2)))/M;
    dxdt(5) = (cos(x(3))*(u(1)+u(2)))/M - g;
    dxdt(6) = L2*(u(2)-u(1))/J;
end