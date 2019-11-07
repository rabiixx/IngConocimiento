function [v_nuevo]=actualizaElementoDeB(A,B,R,alpha,r,t)
    
    [Fil,Col]=size(R);
    aux_sol=0;
    for x=1:Fil
        if r~=x%if R!=x
            p1=R(x,t)-max(min(A(:,x),B(:,t)));%el minimo de cada fila
            p2=min(A(r,x),B(r,t))>=max(min(A(:,x),B(:,t)));
            p3=B(r,t)<=A(r,x);
            aux_sol=aux_sol+(p1*p2*p3);
        end
    end
    
    v_nuevo=B(r,t)+2*alpha*aux_sol;
        
end
%{
function [v_nuevo]=actualizaElementoDeB(A,B,R,alpha,r,t)
    
    [Fil,Col]=size(R);
    aux_sol=0;
    for x=1:Fil
        aux1=[A(:,x) B(:,t)];
        aux2=aux1;
        aux2(r,:)=-Inf;
        p1=R(x,t)-max(min(aux1,[],2));%el minimo de cada fila
        p2=min(A(r,x),B(r,t))>=max(min(aux2,[],2));
        p3=B(r,t)<=A(r,x);
        aux_sol=aux_sol+(p1*p2*p3);
   end
    
    v_nuevo=B(r,t)+2*alpha*aux_sol;
        
end
%}
