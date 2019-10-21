dist = 0:1:15;


cerca = trapmf(dist, [0 0 4 5]);

lejos = trapmf(15 - dist, [0 0 4 5]);

figure;
title("Nosferatu");
hold on;
plot(dist, cerca, '--r');
plot(dist, lejos, '--g');



g_nom = (1 - (trapmf(4.5, [0 0 4 5])^2));
g_lejos = trapmf(10.7, [0 0 4 5]);

sumprob = ((x+y)-x.*y);