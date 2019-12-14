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
    
    
    %% 2. Paso: Calcula la imagen vectorial media
    media = mean(R, 2);
    
    %% 3. Paso: Sustraer la media vectorial
    A = R - media;
    
    %% 4. Paso: Calcular matriz de covarianza C
    C = A' * A;
    
    %% 5. Calcular los valores y vectores propios
    % Se calculan los valores propios y sus respectivos 
    % vectores propios de la matriz de covarianza
    [V, D] = eig(C);
    
    for i = 1 : (NUM_ALUMNOS * NUM_FOTOS)
        nuevaBase(:, i) = (1 / sqrt(D(i,i))) * A * V(:,i);
    end
    
end
   
    
    
    
    
    
    