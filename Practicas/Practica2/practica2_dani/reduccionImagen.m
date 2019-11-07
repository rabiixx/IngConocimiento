function [A,B]=reduccionImagen(nombreImagen,alpha,umbralError,maxIter,C)
   
    R=double(imread(nombreImagen)); 
    R=R/255;
    [Fil,Col]=size(R);
    A=rand(C,Fil);
    B=rand(C,Col);
    
    iter=1;
    error=calcularError(A,B,R);%devuelvo R2?
    fprintf('Iteracion: %d, error: %d.\n',iter,error);
    errorAnterior=Inf;
    diffError=error-errorAnterior;
    
    while iter<=maxIter && diffError<umbralError
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
        errorAnterior=error;
        error=calcularError(A,B,R);
        diffError=error-errorAnterior;
        iter=iter+1;
        fprintf('Iteracion: %d, error: %d.\n',iter,error);
       
    end
end