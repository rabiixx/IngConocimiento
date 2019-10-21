% Ejercicio 15

edad=0:1:100;
adulto=(1./(1+(((edad-50)./10).^4)));
bool1=[ones(1,51),zeros(1,50)];
bool2=[zeros(1,51),ones(1,50)]; %hacer con find buscar prijer elemento negativo
joven=(1-adulto).*bool1;
anciano=(1-adulto).*bool2;

muyjoven = joven.^2;
bastanteanciano = anciano.^(1/2);
ligeramenteadulto = min((adulto.^2), (ones(1, 101) - (adulto.^2)));

figure;
title("Ejercicio 5");
hold on;
plot(muyjoven,'--m');
plot(ligeramenteadulto,'--c');
plot(bastanteanciano,'--y');
legend('muy joven','ligeramente adulto', 'bastante anciano');



%{ 
plot(muyjoven,'om');
plot(joven,'ob');
plot(ligeramenteadulto,'oc');
plot(adulto,'or');
plot(anciano,'og');
plot(bastanteanciano,'oy');
legend('muy joven','joven','ligeramente adulto', 'adulto', 'bastante anciano', 'anciano' );
%}



