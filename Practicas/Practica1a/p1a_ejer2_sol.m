%{
Ejercicio 2: Realiza el ejercicio 1 aplicando:
1 - El  producto  como  t-norma  y  la  suma  probabilística (x+y-xy)  como  t-conorma.
2 -  Lukasievitz como t-norma  (max(0,  x+y-1))  y  su  t-conorma  dual  (min(1,x+y))
%}

%% DATA
a = [0.1 0.3 0.7 1.0 0.6 0.2 0.1];
b = [0.2 0.8 1.0 0.6 0.4 0.3 0.1];

%% 1 - A ∩ B: t-norma: producto
GP1 = a .* b;

%% 1 - A U B: t-conorma: (x+y - x-y)
GP2 = (a + b) - (a .* b);

%% 2 - A ∩ B: t-norma: Lukasievitz
GP3 = max(0, a + b - ones(1, 7));

%% 2 - A ∩ B: t-norma: Lukasievitz
GP4 = min(1, a+b);