%% Practica 2 - Reduccion Imagenes mediante metodo del gradiente 

%{
    Autos: Ruben Cherif
    GitHub: https://github.com/rabiixx/IngConocimiento
    Normas de estilo: MATLAB Programming Style Guidelies by Richard Johnson
%}


% Definicon de constantes
NUM_FIL_C = 16;
ALFA = 0.005;
UMBRAL = 0;
MAX_ITER = 200;
IMG_NAME = 'circles.png';


A = zeros(256, 256);
B = zeros(256, 256);

[A, B] = reduccionImagen(IMG_NAME, ALFA, UMBRAL, MAX_ITER, NUM_FIL_C);
