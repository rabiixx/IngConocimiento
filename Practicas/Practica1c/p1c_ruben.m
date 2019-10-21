%{
    [~] Title: Practica 1c - Controlador Difuso Calefaccion
    [~] Autor: Ruben Cherif Narvaez
    [~] Github: https://github.com/rabiixx
    [~] Fecha: 14/10/2019  
    [~] Tested on: MATLAB R2019a
%}

%% Paso 1: A Variables de entrada (estado)

matrixTemp = [0 0 10 15; 10 15 15 20; 18 20 20 22; 20 25 25 30; 25 30 40 40];

matrixHum = [0 0 10 20; 10 25 25 40; 30 40 40 50; 40 55 55 70; 60 70 100 100];


%% Paso 2: Variables de salida (control)

matrixVT = [-15 -10 -10 -7.5; -10 -5.5 -5.5 -2.5; -7.5 -2.5 -2.5 0; -1 0 0 1; 0 2.5 2.5 7.5; 2.5 7.5 7.5 10; 7.5 10 10 15];

% Variacion de temperatura
var_temp = -15:0.5:15;
vt_bajada_grande = trapmf(var_temp, [-15 -10 -10 -7.5]);
vt_bajada_normal = trapmf(var_temp, [-10 -5.5 -5.5 -2.5]);
vt_bajada_pequena = trapmf(var_temp, [-7.5 -2.5 -2.5 0]);
vt_mantener = trapmf(var_temp, [-1 0 0 1]);
vt_subida_pequena = trapmf(var_temp, [0 2.5 2.5 7.5]);
vt_subida_normal = trapmf(var_temp, [2.5 7.5 7.5 10]);
vt_subida_grande = trapmf(var_temp, [7.5 10 10 15]);

%% Paso 3
matrixVT2 = [vt_bajada_grande; vt_bajada_normal; vt_bajada_pequena; vt_mantener; vt_subida_pequena; vt_subida_normal; vt_subida_grande];

%% Paso 4
matrixRD = [1 1 6; 1 2 6; 1 3 7; 1 4 7; 1 5 7; 2 1 4; 2 2 4; 2 3 5; 2 4 5; 2 5 6; 3 1 4; 3 2 4; 3 3 4; 3 4 4; 3 5 3; 4 1 4; 4 2 4; 4 3 3; 4 4 3; 4 5 2; 5 1 3; 5 2 2; 5 3 2; 5 4 1; 5 5 1];

%% System Input
t_actual = 19.5;
h_actual = 65;

%% Paso 5
sol = [];
for i = 1:25
    x = trapmf(t_actual, matrixTemp(matrixRD(i,1), :));
    y = trapmf(h_actual, matrixHum(matrixRD(i,2), :));
    sol(i, :) = min(min(x, y), matrixVT2(matrixRD(i, 3), :));
end

%% Paso 6: Agregacion max

ag = max(sol);

figure;
title("Controlador Difuso");
hold on;
grid;
%plot(var_temp, ag, 'r');
axis([-15 15 0 1]);
fill(var_temp, ag, 'g');

%% Paso 7: Salida crisp ==> Centroide

suma1 = sum(var_temp.*ag);
suma2 = sum(ag);

sol_final = suma1 / suma2;

%% Output (STDOUT)
fprintf("Solucion final: %f\n", sol_final);

if sol_final < 0
    fprintf("Hay que bajar la calefaccion %f\n", abs(sol_final));
else
    fprintf("Hay que subir la calefaccion %f\n", abs(sol_final));
end

%% Output (output.txt)
fileID = fopen('output.txt','w');
fprintf(fileID,'%f\n', sol_final);
fclose(fileID);
