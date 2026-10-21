clear; clc;
%
%Programa las técnicas selección: Ruleta, Sobrante estocástico (con reemplazo y sin reemplazo),
%mismas que se encuentran incluidas en el cápitulo 6 del e-book Coello Coello, el programa debe
%presentar una salida como la siguiente:
%
clear; clc;
n_individuos = input("Introduce la cantidad de N para los individuos: ");
% Luego pedimos la longitud
m_longitud = input("Introduce la longitud M: ");

id = (1:n_individuos)'; % Se ajusta el tamaño según n_individuos

poblacion = round(rand(n_individuos, m_longitud));
% pasamos los binarios a decimales
valores = binaryVectorToDecimal(poblacion);
aptitud_poblacion = valores .^ 2;
% stats finales
suma_aptitud = sum(aptitud_poblacion);
aptitud_promedio = mean(aptitud_poblacion);
% calcular el valor esperado
val_esp = aptitud_poblacion / aptitud_promedio;
r = sum(val_esp) * rand()
acumulador = 0.0;
i=1;
while acumulador < r
    acumulador = acumulador + val_esp(i); 
    if acumulador < r
        i = i + 1;
    end
end
% generar la tabla
T = table(id, poblacion, valores, aptitud_poblacion, val_esp)
disp("El elegido es el individuo " + i)
%esto no va para este ejercicio
%parte_entera = fix(val_esp)
%sobrante = val_esp - parte_entera
stats_valores_poblacion = [
    sum(valores);
    mean(valores);
    max(valores)
    ];
stats_aptitud = [
    sum(aptitud_poblacion);
    mean(aptitud_poblacion);
    max(aptitud_poblacion)
    ];
stats_val_esp = [
    sum(val_esp);
    mean(val_esp);
    max(val_esp)
    ];
stats_leyendas = [
    "suma";
    "promedio";
    "maximo"
    ];
W = table(stats_leyendas, stats_valores_poblacion, stats_aptitud, stats_val_esp)