function[devMedia, devA, devNuevaBase] = aprendeBase()


	%% Paso 1

	foto1 = double(imread('cara1.png'));

	foto2 = double(imread('cara2.png'));

	foto2 = double(imread('cara3.png'));

	numPixeles = size(foto1);
	numFotos = 3;

	R = zeros(numPixeles, numFotos);

	%% Paso 2: Calcular media por filas de R
	media = zeros(numPixeles, 1);

	for i = 1 : numPixeles
		media(i) = mean(R);
	end

	
	%% Paso 3: Calcular los vectores con media nula
	A = zeros(numPixeles, numFotos);

	for i = 1 : 3
		A(;, i) = R(;, 1) - media(:);
	end

	%% Paso 4: Calcular la matriz de correlacion
	C = zeros(numFotos, numFotos);
	B = transpose(A);

	C = A*B;

	%% Paso 5: Calcular los NumeroFotos valores y vectores propios de C
	v = zeros(numFotos, numFotos);
	mu = zeros(numFotos, numFotos);	

	[v, mu] = eig(C);

	%% Paso 6:
	nuevaBase = zeros(numPixeles, numFotos);
	u = zeros(numPixeles);

	for(i = 1 : numPixeles)
		u(i) = (1 / sqrt(mu(i, i))) * A * v(:, i);
		nuevaBase(:, i) = u(i);
	end

	devA = A,
	devMedia = media;
	devNuevaBase = nuevaBase;
	
end