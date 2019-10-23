%{
    [+] Function: calculoError
    [+] Input: A, B, R
    [+] Output: error
%}
function[devError] = calculoError(A, B, R)

    [nFil, nCol] = size(R);
    newR = zeros(nFil, nCol);

    for i = 1 : nFil
        for j = 1 : nCol
            newR(i, j) = max (min( A(:, i), B(:, j) ) );
        end
    end
           
    error = sum( sum( (R - newR).^2 ) );

    devError = error;
end
