clear; clc;

id = (1:4)';
poblacion = round(rand(4, 5));

% pasamos los binarios a decimales
valores = binaryVectorToDecimal(poblacion);
aptitud = valores .^ 2;

% generar la tabla
T = table(id, poblacion, valores, aptitud)

% stats finales
suma = sum(aptitud)
promedio = mean(aptitud)
maximo = max(aptitud)