edad = 0:100;
%%Declara
adulto = trimf(edad, [25 50 75]);
suma = 0;
x = 0;
y = 0;

%% Forma 1
for i=1:length(edad)
    x = x + (edad(i).*trimf(edad(i), [25 50 75]));
    y = y + trimf(edad(i), [25 50 75]);
end

sol1 = x/y;

%% Forma 2

suma1 = sum(edad.*trimf(edad, [25 50 75]));
suma2 = sum(trimf(edad, [25 50 75]));

sol2 = suma1 / suma2;