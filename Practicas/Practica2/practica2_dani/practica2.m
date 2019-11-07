clc
clear

C=16;
alpha=0.005;
umbralError=0;
maxIter=200;
nombreImagen='circles.png';

profile on 

n=100;
M=magic(n);
[A,B]=reduccionImagen(nombreImagen,alpha,umbralError,maxIter,C);



profile viewer
stats = profile ('info')
s=profile('status')
profile off







nFil = 256;
nCol = 256;
R2 = zeros(nFil, nCol);

for i = 1 : nFil
    for j = 1 : nCol
        R2(i, j) = max (min( A(:, i), B(:, j) ) );
    end
end

imshow(R2);














