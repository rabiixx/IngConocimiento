function [v_nuevo]=actualizaElementoDeA(A,B,R,alpha,r,t)
    
    [Fil,Col]=size(R);
    aux_sol=0;
    for y=1:Col
        aux1=[A(:,t) B(:,y)];
        aux2=aux1;
        aux2(r,:)=[];
        p1=R(t,y)-max(min(aux1,[],2));%el minimo de cada fila
        p2=min(A(r,t),B(r,y))>=max(min(aux2,[],2));
        p3=A(r,t)<=B(r,y);
        aux_sol=aux_sol+(p1*p2*p3);
    end
    
    v_nuevo=A(r,t)+2*alpha*aux_sol;
        
end

