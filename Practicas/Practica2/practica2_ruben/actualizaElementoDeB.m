function[newValue] = actualizaElementoDeB(A, B, R, ALFA, r, t)

    [C, nFil] = size(A);

    suma = 0;
    
    temp1 = [];

    for x = 1:nFil
        Q =  R(x, t) - max( min( A(:, x), B(:, t) ) );
        
        for i = 1:C
            if i ~= r
                temp1(i) = min( A(i, x), B(i, t) ) ;
            end
        end 
        
        maxMin = max(temp1);
        
        cond1 = min( A(r, x), B(r, t) ) >= maxMin;
        cond2 = B(r, t) <= A(r, x);
        suma = suma + (Q  * cond1 * cond2);
    end     

    newValue = B(r, t) + (2 * ALFA * suma);
end 
