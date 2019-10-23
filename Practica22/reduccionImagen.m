%{
El nombre de las variables han sido establecidadas siguiendo las
convenciones de nombreamiento de variables de MATLAB descritas en el 
siguiente documento: 
    https://www.ee.columbia.edu/~marios/matlab/MatlabStyle1p5.pdf
%}

function [devA, devB] = reduccionImagen(imgName, alfa, umbral, maxIte)

    R = double(imread('imgName'));
    R = R / 255;
    
    [nFil, nCol] = size(R);
    newR = zeros(nFil, nCol);
    
    auxA = zeros(C, nFil);
    auxB = zeros(C, Col);
    
    % No es recomendable utilizar la funciones rand() debido a que de
    % aleatoriedad tiene lo k yo te diga, pero para esto nos vale
    A = rand([16 256]);
    B = rand([16 256]);

    newR = calculoError(A, B, R);
    
    for t = 1:
        for
        actualizaElementoDeA(A, B, R, alfa, r, t);
    
    
    
    [devA, devB] = [auxA, auxB];
    
end