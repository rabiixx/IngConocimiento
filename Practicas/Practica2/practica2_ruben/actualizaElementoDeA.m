function[newValue] = actualizaElementoDeA(A, B, R, ALFA, r, t)

    sumaParcial = 0;
    
    [C, nCol] = size(B);
    
    temp1 = [];
    
    for y = 1 : nCol
        Q =  R(t, y) - max( min( A(:, t), B(:, y) ) );
        
        for i = 1:C
            if i ~= r
                temp1(i) = min( A(i, t), B(i, y) ) ;
            end
        end 
        
        maxMin = max(temp1);
        
        cond1 = min( A(r, t), B(r, y) ) >= maxMin;
        cond2 = A(r, t) <= B(r, y);
        sumaParcial = sumaParcial + (Q  * cond1 * cond2);
    end     

    newValue = A(r, t) + 2 * ALFA * sumaParcial;
end 



