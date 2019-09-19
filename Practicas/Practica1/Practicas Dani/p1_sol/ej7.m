A=[2 1 5 -1; 4 -3 2 -1; 3 7 -3 4; -2 -2 4 0];
disp(A);
resul=find((A>-2) & (A<4));
A(resul)%si no pones ';' lo saca por pantalla sin hacer 'disp()'