x=input('Ingrese el valor de la variable: ');
Z=elimina(x);
disp(Z);
function [V]=elimina(x)
    if ( (x<5) || (x>10) )
        error('El valor no esta entre 5-10')
    else
        V=rand(1,x);
        disp(V);
        V(4)=[];
        
    end
end

