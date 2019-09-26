A=0:0.1:10;

F=1./(1+(A-5).^4);
figure;
plot(F);
title("Conjunto F");
hold on;

G=2.^-A;
figure;
plot(G);
title("Conjunto G");
hold on;

H=1./(1+10.*(A-2).^2);
figure;
plot(H);
title("Conjunto H");
hold on;

figure;
plot(1-F);
title("C(F)");
hold on;

figure;
plot(1-H);
title("C(H)");
hold on;

figure;
plot(1-G);
title("C(G)");
hold on;

figure;
plot(max(max(F,G),H));
title("F U G U H");
hold on;

figure;
plot(min(min(F,G),H));
title("F ? G ? H");
hold on;

figure;
plot(min(F,1-H));
title("F ? C(H)");
hold on;

figure;
plot(1-min((1-G),H));
title("C(C(G)) ? H)");
hold on;

figure;
plot(1-max(F,H));
title("C(F U H))");
hold on;

