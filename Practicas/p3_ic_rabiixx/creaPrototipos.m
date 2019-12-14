function [prototipos] = creaPrototipos(media, A, nuevaBase)


    W = nuevaBase' * A;
    
    % Se hace la media por columnas de cada submatriz
    % de dimension numFilas x numFotos
    for i = 1 : 3 : size(W, 1)
        prototipos(:, round(i / 3) + 1) = mean( W(:, [i : i + 2]), 2);
    end
    
end