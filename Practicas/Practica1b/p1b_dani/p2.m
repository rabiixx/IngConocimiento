nota=0:10;

SB=zeros(1,length(nota));
N=zeros(1,length(nota));
AP=zeros(1,length(nota));
S=zeros(1,length(nota));

%No hace falta for
SB = trapmf(nota, [0 0 4 5]);
N = trapmf(nota, [4 5 6 7]);
AP = trapmf(nota, [6 7 8 9]);
S = trapmf(nota, [8 9 10 10]);

figure;
plot(nota,SB,'r');
title("Apartado A");
hold on;
plot(nota,N,'b');
plot(nota,AP,'g');
plot(nota,S,'y');
legend('SB','N','AP','S');

%usar t-conorma porque es 'ó'
Sol=min(1,x+y);%Sol=1,8,6 en SB
x = trapmf(8.6, [6 7 8 9]);%como de notable es 8,6?SOL=0,4
y = trapmf(8.6, [8 9 10 10]);%como de sobresaliente es 8,6?SOL=06
