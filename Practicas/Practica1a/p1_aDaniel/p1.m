A=1:7;
muA=[0.1 0.3 0.7 1 0.6 0.2 0.1];
B=1:7;
muB=[0.2 0.8 1 0.6 0.4 0.3 0.1];

figure;
plot(max(muA,muB));
title("Apartado A");
hold on;

figure;
plot(min(muA,muB));
title("Apartado B");
hold on;

figure;
plot(1-muB);
title("Apartado C");
hold on;

figure;
plot(1-(max(muA,muB)));
title("Apartado D");
hold on;

figure;
plot(1-(min((1-muA),muB)));
title("Apartado E");
hold on;