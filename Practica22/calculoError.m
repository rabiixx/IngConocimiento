
function[devError] = calculoError(A, B, R)

    [nFil, nCol] = size(R);

    newR = zeros(nFil, nCol);

    for i = 1:nFil
        for j = 1:nCol
            newR(i, j) = min(A(1, i), B(1, j));
        end
    end

    error = sum(sum( (R - newR).^2 ));

    devError = error;
end