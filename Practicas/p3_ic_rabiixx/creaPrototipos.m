function [nuevaBase, media, A] = creaPrototipos(prototipos)
    
    W = nuevaBase' * A;
    
    
    % Se hace la media por columnas de cada submatriz
    % de dimension numFilas x numFotos
    
    for i = 1 : size (W, 1)
        prototipos(:, round(i / 3)) = mean( W(:, [i : i + 2]), 2);
    end
     
end