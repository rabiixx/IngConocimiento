function [media, A, nuevaBase] = aprendeBase()

    NUM_ALUMNOS = 11;
    NUM_FOTOS = 3;
    
    % Obtenemos el path del directorio actual
    path = pwd;
    
    R = [];
    for i = 1 : NUM_ALUMNOS
        dir = sprintf('%s\\Miercoles_Josean_procesado\\%d', path, i);
        img1 = double(imread(dir + "_1.jpg")) / 255;
        img2 = double(imread(dir + "_2.jpg")) / 255;
        img3 = double(imread(dir + "_3.jpg")) / 255;
        R = [R img1(:) img2(:) img3(:)];
    end
    
    [FilImg, ColImg] = size(img3);
    fprintf("SIZE IMG: %d x %d\n", FilImg, ColImg);
    
    [FilR, ColR] = size(R);
    fprintf("SIZE R: %d x %d\n", FilR, ColR);
    
    %% 2. Paso: Calcula la imagen vectorial media
    media = mean(R, 2);
    
    [FilMedia, ColMedia] = size(media);
    fprintf("SIZE media: %d x %d\n", FilMedia, ColMedia);
    
    %% 3. Paso: Sustraer la media vectorial
    A = R - media;
    
    [FilA, ColA] = size(A);
    fprintf("SIZE A: %d x %d\n", FilA, ColA);
    
    %% 4. Paso: Calcular matriz de covarianza C
    C = A' * A;
    
    [FilC, ColC] = size(C);
    fprintf("SIZE C: %d x %d\n", FilC, ColC);
    
    %% 5. Calcular los valores y vectores propios
    % Se calculan los valores propios y sus respectivos 
    % vectores propios de la matriz de covarianza
    [V, D] = eig(C);
    
    [FilV, ColV] = size(V);
    fprintf("SIZE Vectores Propios: %d x %d\n", FilV, ColV);
    
    [FilD, ColD] = size(D);
    fprintf("SIZE Valores Propias: %d x %d\n", FilD, ColD);
    
    % A * V(:, i): Calcula los vectores propios de A'*A
    % (1 / sqrt(D(i,i))): Valor propio normalizado
    % Se calculan los vectores propios de A'*A normalizados
    % y se almacena cada vector propio como una columna de 
    % la matriz [33 x 33] nueva base
    for i = 1 : (NUM_ALUMNOS * NUM_FOTOS)
        nuevaBase(:, i) = (1 / sqrt(D(i,i))) * A * V(:,i);
    end
    
    [FilNB, ColNB] = size(nuevaBase);
    fprintf("SIZE Nueva Base: %d x %d\n", FilNB, ColNB);
    
end
   
    
    
    
    
    
    