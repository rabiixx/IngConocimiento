A=1:7;
muA=[0.1 0.3 0.7 1 0.6 0.2 0.1];
B=1:7;
muB=[0.2 0.8 1 0.6 0.4 0.3 0.1];

figure;
plot((muA.*muB));
title("Apartado A_1");
hold on;

figure;
plot((muA+muB)-muA.*muB);
title("Apartado A_2");
hold on;

figure;
plot(max(0,muA+muB-1));
title("Apartado B_1");
hold on;

figure;
plot(min(1,muA+muB));
title("Apartado B_2");
hold on;