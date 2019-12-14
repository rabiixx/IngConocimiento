%% Practica 3: Reconocimiento de Caras - PCA

% Autor: Ruben Cherif Narvaez
% Fecha: 14/12/2019
% E-mail: 99rubenche@gmail.com
% GitHub: https://github.com/rabiixx/
% Version: Version Final 1.3

clc
clear

[media, A, nuevaBase] = aprendeBase();

prototipos = creaPrototipos(media, A, nuevaBase);

tasaAcierto = clasificar(nuevaBase, media, prototipos);

fprintf("[+] Tasa De Acierto: %f\n", tasaAcierto);