function [nuevaBase, media, prototipos] = clasificar(porcentajeAciertos)
    
    % Se lee la ultima imagen de cada alumno
    for i = 1 : NUM_ALUMNOS
        img = double(imread(path + i + '_4.jpg'));
        img = img1 / 255;
        R = [R img(:)];
    end
    
    
    for i = 1 : NUM_ALUMNOS 
        W = nuevaBase' * (R - media);

        dist = sum((W - prototipos).^2);

        [valueMin, indexMin] = min(dist);

        fprintf("Foto %d --> %d", i, indexMin);
        fprintf("Distancia: %f", valueMin);
        if (i == indexMin)
            nAciertos = nAciertos + 1;
        end
    end 
    
    tasaAciertos = numAciertos / NUM_ALUMNOS;

end