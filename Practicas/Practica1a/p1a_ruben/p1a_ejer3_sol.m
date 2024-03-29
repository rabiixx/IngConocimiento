%% Practica 1a - Ejercicio 3

%{
    figure;
    plot(X, a, 'om-');
    title('Funciones de pertenencia');
    hold on;
%}

X = 1:0.1:10;

f = @(x) (1/(1 + ((x-5)^4)));
g = @(x) (2^(-x));
h = @(x) (1 /(1+10*(x-2)^2));


fplot(@(x) (1/(1 + ((x-5)^4))),[1, 10],'b');
fplot(@(x) (2^(-x)),[1, 10],'b');
fplot(@(x) (1 /(1+10*(x-2)^2)), [1 10], 'b');

%% C(F), C(H), C(G)
A = ones(1, length(X)) - f(5);
B = ones(1, length(X)) - g(5);
C = ones(1, length(X)) - h(5);

%% F U G U H, F ∩ G ∩ H
min( F, G, H);
max(F, G, H);

%% F ∩ C(H), C(C(G) ∩ H), C(F U H) 
max(F, ones(1, length(X));
ones(1, length(X)) - max( (ones(1, length(X)) - G), H);
ones(1, length(X)) - min(F, H);



