function [tasaAciertos] = clasificar(nuevaBase, media, prototipos)
    
    path = 'C:\Users\User\Documents\GitHub\IngConocimiento\Practicas\p3_ic_rabiixx\Miercoles_Josean_procesado';
    NUM_ALUMNOS = 11;
    
    imagen = [];
    
    % Se lee la ultima imagen de cada alumno
    for i = 1 : NUM_ALUMNOS
        img = double(imread( i + "_4.jpg"));
        img = img / 255;
        imagen = [imagen img(:)];
    end
    
    numAciertos = 0;
    for i = 1 : NUM_ALUMNOS 

        W = nuevaBase' * (imagen(:, i) - media);

        dist = sum((W - prototipos).^2);

        [valueMin, indexMin] = min(dist);

        %%fprintf("Foto %d --> %d", i, indexMin);
        %%fprintf("Distancia: %f", valueMin);
        if (i == indexMin)
            numAciertos = numAciertos + 1;
        else
           fprintf("Fotos mal: %d\n", i);
           imshow(imread( i + "_4.jpg")); 
          % imshow(imread( indexMin + "_4.jpg")); 
        end
    end 
    fprintf("Numero aciertos: %d", numAciertos);
    tasaAciertos = numAciertos / NUM_ALUMNOS;

end