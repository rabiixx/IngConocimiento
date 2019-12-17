function [tasaAciertos] = clasificar(nuevaBase, media, prototipos)
    
    NUM_ALUMNOS = 11;
    path = pwd;
    imagen = [];
    
    % Se lee la ultima imagen de cada alumno
    for i = 1 : NUM_ALUMNOS
        dir = sprintf('%s\\Miercoles_Josean_procesado\\%d', path, i);
        img = double(imread( dir + "_4.jpg")) / 255;
        imagen = [imagen img(:)];
    end
    
    numAciertos = 0;
    for i = 1 : NUM_ALUMNOS 
    
        % Se proyecta la nueva foto sobre la 
        % nueva base, igual que antes con las 
        % otras fotos: W = nuevaBase' * A
        W = nuevaBase' * (imagen(:, i) - media);
       
        % Calculamos la distancia entre la nueva imagen
        % proyectada y los prototipos de de cada alumno
        % obtenidos anteriormente
        dist = sum((W - prototipos).^2);

        % Nos quedemaos con el protipo que menor distancia
        % tenga con respecto a la nueva imagen puesto que 
        % sera la que mayor probabilidad habra de acertar
        [~, indexMin] = min(dist);

        if (i == indexMin)
            numAciertos = numAciertos + 1;
         else
            fprintf("Prediccion: %d\n", indexMin);
            fprintf("Real: %d\n", i);
        end
    end 
    
    fprintf("[+] Numero aciertos: %d\n", numAciertos);
    fprintf("[+] Numero Imagenes: %d\n", NUM_ALUMNOS);
    
    tasaAciertos = numAciertos / NUM_ALUMNOS;

end