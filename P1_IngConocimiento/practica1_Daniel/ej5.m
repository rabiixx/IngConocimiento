A=[1 1 0; 0 2 3;3 3 1];
disp("Esta es la matriz A: ");
disp(A);
a=A(1,:)+A(3,:)*3;
disp("Apartado a: ");
disp(a);
disp("Apartado b: ");
b=A(:,1);
c=A(:,3);
A(:,1)=c;
A(:,3)=b;
disp(A);

disp("Apartado c: ");
B=[A(:,1) A(:,3)];
disp(B);

