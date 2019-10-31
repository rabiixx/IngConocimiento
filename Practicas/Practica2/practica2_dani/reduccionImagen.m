function [A,B]=reduccionImagen(nombreImagen,alpha,umbralError,maxIter,C)
   
    R=double(imread(nombreImagen)); 
    R=R/255;
    [Fil,Col]=size(R);
    A=rand(C,Fil);
    B=rand(C,Col);
    
    iter=1;
    error=calcularError(A,B,R);%devuelvo R2?
    fprintf('Iteracion: %d, error: %d.\n',iter,error);
    
    errorAnterior=0;
    
    while iter<=maxIter %&& error-errorAnterior>=umbralError
        errorAnterior=error;
        for i=1:C
            for j=1:Fil
                A(i,j)=actualizaElementoDeA(A,B,R,alpha,i,j);
            end
        end
        for i=1:C
            for j=1:Col
                B(i,j)=actualizaElementoDeB(A,B,R,alpha,i,j);
            end
        end
        error=calcularError(A,B,R);
        iter=iter+1;
        fprintf('Iteracion: %d, error: %d.\n',iter,error);
    end
    %imshow(R);
end