%{
    [+] Function: calculoError
    [+] Input: A, B, R
    [+] Output: error
%}
function[devError] = calculoError(A, B, R)

    [nFil, nCol] = size(R);
    newR = zeros(nFil, nCol);

    for x = 1 : nFil
        for y = 1 : nCol
            newR(x, y) = max (min( A(:, x), B(:, y) ) );
        end
    end
           
    error = sum( sum( (R - newR).^2 ) );

    devError = error;
end
