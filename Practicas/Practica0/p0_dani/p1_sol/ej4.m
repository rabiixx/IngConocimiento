N=4;
M=4;
A=rand(N,M);
disp("Matriz aleatoria A: ");
disp(A);

%B=A';
%disp("Matriz traspuesta: ");
%disp(B);

disp("La suma de las filas de A: ");
for i=1:1:N
    disp(sum(A(i,:)));
end

disp("La suma de las columnas de A: ");
for j=1:1:M
    disp(sum(A(:,j)));
end
disp("La suma de la diagonal principal de A: ");
sumaDig=0;
for i=1:1:N
    sumaDig=sumaDig+sum(A(i,i));
end
disp(sumaDig);%suma=sum(diag(A)); sin hacer el for

disp("La submatriz es: ");
C=A(1:2,1:2);
disp(C);



