function [media, A, nuevaBase] = aprendeBase()

    NUM_ALUMNOS = 11;
    NUM_FOTOS_ALUMNO = 3;
    path = ''
    
    R = [];
    for i = 1 : NUM_ALUMNOS
        img1 = double(imread(path + i + '_1.jpg'));
        img1 = img1 / 255;        
        img2 = double(imread(path + i + '_2.jpg'));
        img2 = img2 / 255;        
        img3 = double(imread(path + i + '_3.jpg'));
        img3 = img3 / 255;        
    end
    
    
    %% 2. Paso: Calcula la imagen vectorial media
    % Se calcula la media por columnas de R
    media = mean(A, 2);
    
    %% 3. Paso: Sustraer la media vectorial
    % Restamos la media a todas las columnas de R
    A = R - media;
    
    %% 4. Paso: Calcular matriz de covarianza C
    % Calculamos A^t x A para que la matriz no sea tan grande*
    C = A' * A;
    
    %% Calcular los valores y vectores propios
    % Se calculan los valores propios y sus respectivos 
    % vectores propios de la matriz de covarianza
    [V, D] = eig(C);
    
    for i = 1 : (NUM_ALUMNOS * NUM_FOTOS_ALUMNO)
        nuevaBase(:, i) = (1 / sqrt(D(i,i))) * A * V(:,i);
    end
    
end
   
    
    
    
    
    
    