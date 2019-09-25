%{
X = 1:10;

mu1_x = [0 0 0.2 0.5 0.7 1 0.7 0.5 0.2 0];

figure;
plot(X, mu1_x, 'om');
title('Funciones de pertenencia');
hold on;

mu2_x = [1 1 0.7 0.5 0.2 0 0 0 0 0];
plot(X, mu2_x, 'ob');

legend('Conjunto 1','Conjunto 2'); 

AND = t-normas:
	- producto, min
OR = t-conormas
	- max
NO = complemetario
	- 1 - x
(x, mu(x)) = Grado de pertencia de x sobre una funcion

%}

X = 1:7;
mu1_a = [0.1 0.3 0.7 1.0 0.6 0.2 0.1];
mu2_b = [0.2 0.8 1.0 0.6 0.4 0.3 0.1];

figure;
plot(X, mu1_a, 'om-');
title('Funciones de pertenencia');
hold on;
plot(X, mu2_b, 'ob-');

%% A U B
U = min(min(mu1_a, [], 7), min(mu2_b, [], 7));
plot(X, U, 'ok-'); 
%% A ∩ B
I = max(max(mu1_a, [], 7), min(mu2_b, [], 7));
plot(X, I, 'og-'); 

legend('A','B', 'min(A, B)','max(A,B)');

%% C(B)
C = ones(1, 7) 

C = ones(1, 7)  - mu2_b;

%% C(A U B)
D =  ones(1, 7) - min(min(mu1_a, [], 7), min(mu2_b, [], 7));
 
%% C(C(A) ∩ B) 
E = ones(1, 7) - max(max((ones(1,7) - mu1_a), [], 7), max(mu2_b, [], 7));
