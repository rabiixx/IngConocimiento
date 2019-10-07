%% A) Variables de entrada (estado)

% Temperatura
temp = 0:0.01:40;
t_muy_baja = trimf(temp, [0 0 10 15]);
t_baja = trimf(temp, [10 15 15 20]);
t_normal = trimf(temp, [18 20 20 22]);
t_alta = trimf(temp, [20 25 25 30]);
t_muy_alta = trimf(temp, [25 30 40 40]);

% Humedad
humedad = 1:0.01:100;
h_muy_baja = trimf(temp, [0 0 10 20]);
h_baja = trimf(temp, [10 25 25 40]);
h_normal = trimf(temp, [30 40 40 50]);
h_alta = trimf(temp, [40 55 55 70]);
h_muy_alta = trimf(temp, [60 70 100 100]);

%% Variables de salida (control)

% Variacion de temperatura
var_temp = -15:0.5:15;
vt_bajada_grande = trimf(temp, [-15 -10 -10 -7.5]);
vt_bajada_normal = trimf(temp, [-10 -5.5 -5.5 -2.5]);
vt_bajada_pequena = trimf(temp, [-7.5 -2.5 -2.5 0]);
vt_mantener = trimf(temp, [-1 0 0 1]);
vt_subida_pequena = trimf(temp, [0 2.5 2.5 7.5]);
vt_subida_normal = trimf(temp, [2.5 7.5 7.5 10]);
vt_subida_grande = trimf(temp, [7.5 10 10 15]);





