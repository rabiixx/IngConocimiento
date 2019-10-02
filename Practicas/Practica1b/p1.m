edad = 0:100;

%{
muAdulto =  zeros(1, length(edad));
for i = 1:length(edad)
    muAdulto(i) = trimf(edad(i), [25 50 75])
end
figure;
plot(edad,muAdulto,'r');
legend('Adulto');
%}

muAdulto = trimf(edad, [25 50 75]);

joven = trapmf(edad, [0 0 15 30]);

anciano = gaussmf(edad, [20 100]);

figure;
title("Nosferatu");
hold on;
plot(edad,muAdulto,'--r');
plot(edad,joven,'--g');
plot(edad,anciano,'--c');

legend('Adulto', 'Joven', 'Anciano');
