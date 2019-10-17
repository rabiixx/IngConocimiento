% A Variables de entrada (estado)


matrixTemp = [0 0 10 15; 
              10 15 15 20; 
              18 20 20 22; 
              20 25 25 30; 
              25 30 40 40];

% Temperatura
temp = 0:0.01:40;
t_muy_baja = trapmf(temp, [0 0 10 15]);
t_baja = trapmf(temp, [10 15 15 20]);
t_normal = trapmf(temp, [18 20 20 22]);
t_alta = trapmf(temp, [20 25 25 30]);
t_muy_alta = trapmf(temp, [25 30 40 40]);

matrixHum = [0 0 10 20; 
             10 25 25 40; 
             30 40 40 50; 
             40 55 55 70; 
             60 70 100 100];

% Humedad
humedad = 1:0.01:100;
h_muy_baja = trapmf(humedad, [0 0 10 20]);
h_baja = trapmf(humedad, [10 25 25 40]);
h_normal = trapmf(humedad, [30 40 40 50]);
h_alta = trapmf(humedad, [40 55 55 70]);
h_muy_alta = trapmf(humedad, [60 70 100 100]);

% Variables de salida (control)

matrixVT = [-15 -10 -10 -7.5; 
            -10 -5.5 -5.5 -2.5;
            -7.5 -2.5 -2.5 0; 
            -1 0 0 1; 
            0 2.5 2.5 7.5; 
            2.5 7.5 7.5 10; 
            7.5 10 10 15];

% Variacion de temperatura
var_temp = -15:0.5:15;
vt_bajada_grande = trapmf(var_temp, [-15 -10 -10 -7.5]);
vt_bajada_normal = trapmf(var_temp, [-10 -5.5 -5.5 -2.5]);
vt_bajada_pequena = trapmf(var_temp, [-7.5 -2.5 -2.5 0]);
vt_mantener = trapmf(var_temp, [-1 0 0 1]);
vt_subida_pequena = trapmf(var_temp, [0 2.5 2.5 7.5]);
vt_subida_normal = trapmf(var_temp, [2.5 7.5 7.5 10]);
vt_subida_grande = trapmf(var_temp, [7.5 10 10 15]);

matrixVT2 = [vt_bajada_grande;
            vt_bajada_normal; 
            vt_bajada_pequena; 
            vt_mantener; 
            vt_subida_pequena; 
            vt_subida_normal; 
            vt_subida_grande];


matrixRD = [1 1 6; 1 2 6; 1 3 7; 1 4 7; 1 5 7;
            2 1 4; 2 2 4; 2 3 5; 2 4 5; 2 5 6; 
            3 1 4; 3 2 4; 3 3 4; 3 4 4; 3 5 3; 
            4 1 4; 4 2 4; 4 3 3; 4 4 3; 4 5 2;
            5 1 3; 5 2 2; 5 3 2; 5 4 1; 5 5 1];


matrixC=[vt_subida_normal vt_subida_normal vt_subida_grande vt_subida_grande vt_subida_grande;
         vt_mantener vt_mantener vt_subida_pequena vt_subida_pequena vt_subida_normal;
         vt_mantener vt_mantener vt_mantener vt_mantener vt_subida_pequena;
         vt_mantener vt_mantener vt_subida_pequena vt_subida_pequena vt_subida_normal;
         vt_subida_pequena vt_bajada_normal vt_bajada_normal vt_bajada_grande vt_bajada_grande];

% Apartado5(hay algo mal)
t_actual=19.5;
h_actual=65;
[n,m]=size(matrixRD);
for i=1:n
    for j=1:m
        Pt=trapmf(t_actual,matrixTemp(matrixRD(i,1),:));
        Ph=trapmf(h_actual,matrixHum(matrixRD(i,2),:)); 
        minimo=min(Pt,Ph);
        salida=min(min(minimo,matrixVT2(matrixRD(i,3),:)));
        disp(salida);
        %salida(i,:)=minimo2;
    end
   
end


  


%% System input
%t_actual = 8;
%humbral = 0.5;




