function [prototipos] = creaPrototipos(~, A, nuevaBase)

    W = nuevaBase' * A;

    for i = 1 : 3 : size(W, 1)
        prototipos(:, round(i / 3) + 1) = mean( W(:, (i : i + 2)), 2);
    end
    
end