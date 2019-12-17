function [prototipos] = creaPrototipos(~, A, nuevaBase)

    % Nueva Base: 19200 x 33
    % A: 19200 x 33
    % A: Imagen - media
    % Se proyectan las imagenes sobre la nueva base obtenida
    W = nuevaBase' * A;
    
    % W: 33 x 33
    [FilW, ColW] = size(W);
    fprintf("SIZE W: %d x %d\n", FilW, ColW);

    
    % Se hace la media cada 3 columnas correspondientes a 
    % las 3 fotos de cada estudiante y se guarda como una 
    % columna de la matriz [33 x 11] prototipos
    for i = 1 : 3 : size(W, 1)
        prototipos(:, round(i / 3) + 1) = mean( W(:, (i : i + 2)), 2);
    end
    
    [FilProto, ColProto] = size(prototipos);
    fprintf("SIZE Prototipos: %d x %d\n", FilProto, ColProto);

end