edad=0:1:100;
muAdultoA=zeros(1,length(edad));
muJoven=zeros(1,length(edad));
muAnciano=zeros(1,length(edad));

for i = 1:length(edad)
    muAdultoA(i) = trimf(edad(i), [25 50 75]);
    muJoven(i) = trapmf(edad(i), [0 0 15 30]);
    muAnciano(i) = gaussmf(edad(i), [20 100]); %[desviacion media]
end
figure;
plot(edad,muAdultoA,'r');
hold on;
plot(edad,muJoven,'b');
plot(edad,muAnciano,'g');
legend('muAdulto','muJoven','muAnciano');

