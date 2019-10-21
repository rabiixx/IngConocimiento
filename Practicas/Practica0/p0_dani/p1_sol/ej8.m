A=[1 4 0; 0 2 3; 6 3 7];
B=zeros(3,3);

for i=1:1:length(A)
    [y,k]=sort(A(i,:));
    B(i,:)=k;  
end

disp(B);