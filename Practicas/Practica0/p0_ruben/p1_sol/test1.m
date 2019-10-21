%%Funciones

%% El archivo se tiene que llamar igual que la funcion principal
function [a,b] = test1(c)
a = c;
a = c*2;


%%Funcion auxiliar, solo se le puede llamar desde dentro de la funcion P.
function [s] = auxiliar(g)
s = g/2;
end


