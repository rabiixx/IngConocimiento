edad=0:1:100;
adulto=(1./(1+(((edad-50)./10).^4)));
bool1=[ones(1,51),zeros(1,50)];
bool2=[zeros(1,51),ones(1,50)];//hacer con find buscar prijer elemento negativo
joven=(1-adulto).*bool1;
anciano=(1-adulto).*bool2;
figure;
title("Ejercicio 4");
hold on;
plot(anciano,'g');
plot(adulto,'r');
plot(joven,'b');
