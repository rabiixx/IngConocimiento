distancia=0:15;

C=zeros(1,length(distancia));
L=zeros(1,length(distancia));

C=trapmf(distancia,[0 0 4 5]);
L=trapmf(15-distancia,[0 0 4 5]);%hacer de forma general

NMC=1-C.^2;

figure;
plot(distancia,C,'r');
hold on;
plot(distancia,L,'g');
plot(distancia,NMC,'b--');
legend('C','L','NMC');

%usar t-conorma porque es 'ó'
x =1- (trapmf(4.5, [0 0 4 5]))^2 %no(-1) muy(^2) cerca
y = trapmf(10.7, [10 11 15 15])

sumprod=((x+y)-x.*y)%t-conorma es la 'ó'
prod=x.*y%no hace falta la t-norma porque es el 'y'

%(x+b)-x.*b