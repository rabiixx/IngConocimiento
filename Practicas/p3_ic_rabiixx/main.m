%% Practica 3: Reconocimiento de Caras - PCA

% Autor: Ruben Cherif Narvaez
% E-mail: 99rubenche@gmail.com
% GitHub: https://github.com/rabiixx/IngConocimiento

[media, A, nuevaBase] = aprendeBase();

prototipos = creaPrototipos(media, A, nuevaBase);

tasaAcierto = clasificar(nuevaBase, media, prototipos);

fprintf("Tasa De Acierto: %f", tasaAcierto);