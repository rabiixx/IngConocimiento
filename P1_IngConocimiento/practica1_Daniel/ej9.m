A=rand(2,3);
B=rand(2,3);
disp("AxB: ");
mult=A.*B;
disp(mult);

disp("Usando for: ");
[N,M]=size(A);
C=zeros(N,M);
tic;
for i=1:1:N
    for j=1:1:M
        C(i,j)=A(i,j)*B(i,j);
    end
end
t1=toc
disp(C);

disp("Usando while: ");
tic;
while i<N
   while j<M
      C(i,j)=A(i,j)*B(i,j);
   end
end
t2=toc
disp(C);