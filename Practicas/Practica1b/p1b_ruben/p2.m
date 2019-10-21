nota = 0:1:10;

S = trapmf(nota, [0 0 4 5]);
A = trapmf(nota, [4 5 6 7]); 
N = trapmf(nota, [6 7 8 9]);
SB = trapmf(nota, [8 9 10 10]);


figure;
title("Nosferatu");
hold on;
plot(nota, S, '--r');
plot(nota, A, '--g');
plot(nota, N, '--b');
plot(nota, SB, '--m');

%(x, mu(x)) = Grado de pertencia de x sobre una funcion
n = trapmf(8.6, [6 7 8 9]);
n2 = trapmf(8.6, [8 9 10 10]);
grado_n = max(0, 8.6 + trapmf(8.6, [6 7 8 9]) - 1);
grado_s = max(0, 8.6 + trapmf(8.6, [8 9 10 10]) - 1);
grado_verdad = min(1, grado_n + grado_s);
