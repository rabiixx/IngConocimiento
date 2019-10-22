function[newMatrix] = actualizaElementoDeB(A, B, R, alfa, r, t)

    [C, Fil] = size(B);
    new_B = zeros(C, Col);

    sum1 = 0;
    tempR = 0;
    for x = 1:Fil
        for i = 1:C
            tempR = max( min( A(i, x), B(i, t) ) );    
        end 
        sum1 = sum1 + (R(x, t) - tempSum);
        sum1 = sum1 * ( min( A(r, x), B(r, t)) >= tempR ) * (B(r, t) <= A(r, x) );
    end

    new_B(r, t) = B(r, t) + 2*alfa * sum1;

    newMatrix = new_B;
    
end