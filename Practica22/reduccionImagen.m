%{
El nombre de las variables han sido establecidadas siguiendo las
convenciones de nombreamiento de variables de MATLAB descritas en el 
siguiente documento: 
    https://www.ee.columbia.edu/~marios/matlab/MatlabStyle1p5.pdf
%}

function [devA, devB] = reduccionImagen(IMG_NAME, ALFA, UMBRAL, MAX_ITER, NUM_FIL_C)

    R = double(imread('circles.png'));
    R = R / 255;
    
    disp(R);
    
    [nFil, nCol] = size(R);
    
    auxA = zeros(NUM_FIL_C, nFil);
    auxB = zeros(NUM_FIL_C, nCol);
    
    % No es recomendable utilizar la funciones rand() debido a que de
    % aleatoriedad tiene lo k yo te diga, pero para esto nos vale
    A = rand([NUM_FIL_C nFil]);
    B = rand([NUM_FIL_C nCol]);

    iterActual = 1;
    diffError = UMBRAL + 1;
    
    while ( (diffError > UMBRAL) || (iterActual < MAX_ITER) )
    
        for r = 1 : NUM_FIL_C
            for t = 1 : nCol
                auxA(r, t) = actualizaElementoDeA(A, B, R, ALFA, r, t);
                auxB(r, t) = actualizaElementoDeB(A, B, R, ALFA, r, t);
            end
        end
        
        diffError = calculoError(A, B, R) - calculoError(auxA, auxB, R);
        
        A = auxA;
        B = auxB;
        
        iterActual = iterActual + 1;
    
    end
    
    devA = A;
    devB = B;
    
end