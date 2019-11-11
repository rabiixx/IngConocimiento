function obtenCara(nombreFoto, idAlumno,numeroFoto)
I = double(imread(nombreFoto));
I = rgb2gray(I./255);
%imshow(uint8(I))
imshow(I)

disp('Pincha con el raton desde donde quieras recortar la imagen (parte superior)');
[x,sup] = ginput(1);
sup
x
sup = floor(sup);
disp('Pincha con el raton desde donde quieras recortar la imagen (parte inferior)');
[x,inf] = ginput(1);
inf
x
inf = floor(inf);
disp('Pincha con el raton desde donde quieras recortar la imagen (parte izquierda)');
[izda,x] = ginput(1);
x
izda
izda = floor(izda);
% [x_coord y_coord] = ginput(1)

dcha = izda + floor((inf-sup)*(3/4));
I = imread(nombreFoto);
I = I(sup:inf,izda:dcha);
I = imresize(I, [160 120])
imshow(uint8(I));
imwrite(uint8(I),strcat(num2str(idAlumno),'_',num2str(numeroFoto),'.jpg'));
