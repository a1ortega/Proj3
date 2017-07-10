function B=closetozeroroundoff(A) 
[m,n]=size(A);
 for i=1:m
    for j=1:n
        if abs(A(i,j))<10^(-7)
            A(i,j) = 0; 
        end
    end
end
B=A;
end