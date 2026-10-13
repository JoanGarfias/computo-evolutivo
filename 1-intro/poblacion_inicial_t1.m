% Programa elaborado por Joan Garfias
% Computo evolutivo
% Introducir primero N individuos
n_individuos = input("Introduce la cantidad de N para los individuos: ");

% Luego pedimos la longitud
m_longitud = input("Introduce la longitud M: ");

% Creamos la población
p = randi([0 1], n_individuos, m_longitud)
