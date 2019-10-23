function[newValue] = actualizaElementoDeA(A, B, R, alfa, r, t)

    [C, Col] = size(A);

    for y = 1:C
        aux = R(x, t) - max( min( A(:, x), B(:, t) ) );
        aux = aux * ( min( A(r, t), B(r, y) ) >= max( min( A(i~=r, x), B(:, t) ) )) * (A(r, t) <= B(r, y));
    end
    
    newValue = A(r, t) + 2*alfa * aux;
    
end