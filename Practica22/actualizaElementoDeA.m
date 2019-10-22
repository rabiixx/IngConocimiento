function[newMatrix] = actualizaElementoDeA(A, B, R, alfa, r, t)


    [C, Col] = size(A);
    new_A = zeros(C, Col);

    sum1 = 0;
    tempR = 0;
    for y = 1:Col
        for i = 1:C
            tempR = max( min( A(i, t), B(i, y) ) );    
        end 
        sum1 = sum1 + (R(t, y) - tempSum);
        sum1 = sum1 * ( min( A(r, t), B(r, y)) >= tempR ) * (A(r, t) <= B(r, y) );
    end

    new_A(r, t) = A(r, t) + 2*alfa * sum1;

    newMatrix = new_A;
    
end