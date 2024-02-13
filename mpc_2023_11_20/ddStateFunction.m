function dx = ddStateFunction(x,u)
    % Passo di campionamento
    Ts = 0.1;

    % Inizializzazione
    dx = zeros(3,1);

    % Aggiornamento
    dx(1) = x(1) + u(1)*cos(x(3))*Ts;
    dx(2) = x(2) + u(1)*sin(x(3))*Ts;
    dx(3) = x(3) + u(2)*Ts;
end