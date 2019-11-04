%% Practica 2 - Ing. Conocimiento

R = [0.5 0.2 0.9 0.83 0.87; 0.3 0.1 0.7 0.26 0.4; 0.5 0.26 0.69 0.26 0.35; 0.3 0.48 0.75 0.49 0.14];

A = [0.5 0.1 0.3 0.8; 
     0.4 0.4 0.1 0.6];

B = [0.2 0.7 0.6 0.5 0.9;
     0.6 0.3 0.4 0.7 0.9];

%[nFil, nCol] = size(R);
C = 2;
%newR = zeros(nFil, nCol);

%{
for x = 1 : nFil
    for y = 1 : nCol
        newR(x, y) = max (min( A(:, x), B(:, y) ) );
    end
end
%}

x = 1;
y = 1;
temp1 = [];
for i = 1:C
    %if i ~= 2
        temp1(i) = min( A(i, x), B(i, y) ) ;
    %end
end 

maxMin = max(temp1);

%error = sum( sum( (R - newR).^2 ) );
