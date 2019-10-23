
R = [0.5 0.2 0.9 0.83 0.87; 0.3 0.1 0.7 0.26 0.4; 0.5 0.26 0.69 0.26 0.35; 0.3 0.48 0.75 0.49 0.14];

A = [0.5 0.1 0.3 0.8];

B = [0.2 0.7 0.6 0.5 0.9];
 
[nFil, nCol] = size(R);

newR = zeros(nFil, nCol);

for i = 1:nFil
    for j = 1:nCol
        newR(i, j) = max( min(A(i~=r, i), B(:, j)) ); 
    end
end

error = sum(sum( (R - newR).^2 ));
