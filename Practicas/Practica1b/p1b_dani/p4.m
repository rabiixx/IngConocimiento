altura = 0:220;
exito = 0:0.0005:1;

bajo = trapmf(altura, [0 0 135 160]);
medio = trapmf(altura, [150 160 170 180]);
alto = trapmf(altura, [170 180 220 220]);

malo = trapmf(exito, [0 0 0.25 0.5]);
regular = trapmf(exito, [0.25 0.4375 0.625 0.8125]);
bueno = trapmf(exito, [0.625 0.875 1 1]);

%{
figure;
title("Nosferatu");
hold on;
plot(dist, cerca, '--r');
plot(dist, lejos, '--g');
%}
g_alto = trapmf(167, [170 180 220 220]);
g_exito = trapmf(0.75, [0.625 0.875 1 1]);

sol = min(g_alto, g_exito);

numCan = 1:9;
arrAlt = [167 169 175 179 183 186 187 190 200];
arrExito = [0.75 0.375 0.9375 0.75 1 0.8125 0.75 0.625 0.8125];
for i=1:length(numCan)
    
    g_alto = trapmf(arrAlt(i), [170 180 220 220]);
    g_exito = trapmf(arrExito(i), [0.625 0.875 1 1]);

    numCan(i) = min(g_alto, g_exito);
end

for i=1:length(numCan)
    if numCan(i) >= 0.5
        fprintf("Candidato %d SELECCIONADO\n", i);
    else
        fprintf("Candidato %d NO SELECCIONADO\n", i);
    end
end
