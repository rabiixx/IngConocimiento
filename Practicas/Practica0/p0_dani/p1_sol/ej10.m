A=rand(2,3);
B=rand(2,1);

disp("Apartado a: ");
mult=bsxfun(@times,A,B);
disp(mult);

disp("Apartado b: ");
mult2=repmat(B,1).*A;
disp(mult2);

disp("Apartado c");
[N,M]=size(A);
C=zeros(N,M);
tic;
for i=1:1:M
    C(:,i)=A(:,i).*B;
end
t1=toc
disp(C);

disp("Apartado d: ");
D=zeros(N,M);
tic;
for i=1:1:N
    for j=1:1:M
        D(i,j)=A(i,j)*B(i,1);
    end
end
t2=toc
disp(D);


