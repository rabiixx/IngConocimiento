%% Practica 2 - Ing. Conocimiento

R = [0.5 0.2 0.9 0.83 0.87; 0.3 0.1 0.7 0.26 0.4; 0.5 0.26 0.69 0.26 0.35; 0.3 0.48 0.75 0.49 0.14];

A = [0.5 0.1 0.3 0.8];

B = [0.2 0.7 0.6 0.5 0.9];

tempR = zeros(4,5);

for i = 1:4
    for j = 1:5
        fprintf("das\n");
        tempR(i, j) = min(A(1, i), B(1, j));
    end
end

error = sum(sum( (R - tempR).^2 ));

R2 = double(imread(�nombreImagen�));