%{
El nombre de las variables han sido establecidadas siguiendo las
convenciones de nombreamiento de variables de MATLAB descritas en el 
siguiente documento: 
    https://www.ee.columbia.edu/~marios/matlab/MatlabStyle1p5.pdf
%}

function [A, B] = reduccionImagen(imgName, alfa, umbral, maxIte, nFil, nCol_)

    R = double(imread('imgName'));
    R = R / 255;
    
    % No es recomendable utilizar la funciones rand() debido a que de
    % aleatoriedad tiene lo k yo te diga, pero para eso nos vale
    A = rand([16 256]);
    B = rand([16 256]);

    
end