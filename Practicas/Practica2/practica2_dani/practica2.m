clc
clear

C=16;
alpha=0.005;
umbralError=0;
maxIter=200;
nombreImagen='circles.png';
[A,B]=reduccionImagen(nombreImagen,alpha,umbralError,maxIter,C);


