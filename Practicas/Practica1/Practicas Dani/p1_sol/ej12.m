A=[3 0 1;0 5 2;0 0 7];
B=[3 0 9;7 3 0;0 4 3];
C=dividir(A,B);
disp(C);
function [c]=dividir(a,b)
    [N,M]=size(a);
    c=zeros(N,M);
    for i=1:1:N
        for j=1:1:M
            aux=a(i,j)/b(i,j);
            if isinf(aux)
                c(i,j)=-999;
            elseif isnan(aux)
                c(i,j)=111;
            else
                c(i,j)=aux;
                
            end
        end
    end

end