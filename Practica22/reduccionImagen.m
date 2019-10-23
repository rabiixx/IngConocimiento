%{
El nombre de las variables han sido establecidadas siguiendo las
convenciones de nombreamiento de variables de MATLAB descritas en el 
siguiente documento: 
    https://www.ee.columbia.edu/~marios/matlab/MatlabStyle1p5.pdf
%}

function [devA, devB] = reduccionImagen(IMG_NAME, ALFA, UMBRAL, MAX_ITER, NUM_FIL_C)

    R = double(imread('imgName'));
    R = R / 255;
    
    [nFil, nCol] = size(R);
    
    newR = zeros(nFil, nCol);
    auxA = zeros(NUM_FIL_C, nFil);
    auxB = zeros(NUM_FIL_C, nCol);
    
    % No es recomendable utilizar la funciones rand() debido a que de
    % aleatoriedad tiene lo k yo te diga, pero para esto nos vale
    A = rand([16 256]);
    B = rand([16 256]);

    iniError = ; 
    finError = 0;
    
    while ((iniError + finError) > UMBRAL) 
    
        iniError = calculoError(A, B, R);

        for r = 1:nFil
            for t = 1:nCol
                auxA(r, t) = actualizaElementoDeA(A, B, R, ALFA, r, t);
                auxB(r, t) = actualizaElementoDeB(A, B, R, ALFA, r, t);
            end
        end

        finError = calculoError(A, B, R);
    
    end
    
    [devA, devB] = [auxA, auxB];
    
end