
%% Valor inicial, incremento, valor final
v = 2.2:20

a = v(2)

a = v(2:4)

a = v(2:end)

%% Acceso a posiciones [] de v
v([1 4 7])

 %% Matrices
M = [3 4 5; 6 7 8; 1 -1 0]

%% Acceso fila entera
M(2,:)

%% Ultimo elem fila 2
M(2,end)

%% 
M(2:end)

%% Gen 
zeros(n,m)
ones(n,m)
eye(n,m)