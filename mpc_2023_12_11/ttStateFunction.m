function dx = ttStateFunction(x,u)
    % Parametri
    L = 1;
    L1 = 6;
    L2 = 10;

    % Inizializzazione
    dx = zeros(4,1);

    % Definizione degli stati
    theta = x(3);  
    beta = x(4);

    % Definizione degli ingressi
    alpha = u(1);
    v = u(2);


    % Aggiornamento
    dx(1) = v * cos(beta) * (1 + L/L1 * tan(beta) * tan(alpha)) * cos(theta);
    dx(2) = v * cos(beta) * (1 + L/L1 * tan(beta) * tan(alpha)) * sin(theta);
    dx(3) = v * (sin(beta)/L2 - L/(L1*L2)*cos(beta) * tan(alpha));
    dx(4) = v * (tan(alpha)/L1 - sin(beta)/L2 + L/(L1*L2)*cos(beta) * tan(alpha));
end