%% Ejercicio 5

a = [1 1 0; 0 2 3; 3 3 1]

%% Acceso 1, columna
a(:,1);
%% Acceso 1, fila
a(1,:)

fila1 = 3*a(1,:)
res = fila1 + a(3,:)

a(1,:) = a(3,:)

b = [a(:,1); a(:,3)]