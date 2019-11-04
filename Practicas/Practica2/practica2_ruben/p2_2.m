
R = [0.5 0.2 0.9 0.83 0.87; 0.3 0.1 0.7 0.26 0.4; 0.5 0.26 0.69 0.26 0.35; 0.3 0.48 0.75 0.49 0.14];

A = [0.5; 0.1; 0.3; 0.8];

B = [0.2; 0.7; 0.6; 0.2];
 
[nFil, nCol] = size(R);

temp1 = []
for i = 1:4
    if i~=3
        temp1(i) = min( A(i, 1), B(i, 1) ) ;
    end
end

sol = max(temp1);
    
    %{
newR = zeros(nFil, nCol);
 h = zeros(4);
j = 4;
for i = 1:4
    fprintf("hola\n");
    h(i) = min( A(i~=j, 1), B(i, 1) ); 
end
sol = max( h );
%}

%error = sum(sum( (R - newR).^2 ));
