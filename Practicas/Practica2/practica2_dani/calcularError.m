function [error]=calcularError(A,B,R)
    [Fil,Col]=size(R);
    R2=zeros(Fil,Col);
    for i=1:Fil
        for j=1:Col
            x=A(:,i);
            y=B(:,j);
            minimo=min(x,y);
            maximo=max(minimo);
            R2(i,j)=maximo;
        end
    end
   imshow(R2);
   error = sum( sum( (R - R2).^2 ) );


end