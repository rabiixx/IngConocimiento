clear

R = double(imread('circles.png')); 
R=R/255;
[Fil,Col]=size(R);
A=rand(16,Fil);
B=rand(16,Col);
sol=calcularError(A,B,R);
fprintf('Solucion: %d\n',sol);