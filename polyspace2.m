function P=polyspace(B,Q,r)


format rat,
u=sym2poly(B(1));
n=length(u);
C=zeros(n); 
for i=1: n
    C( : , i) = transpose(sym2poly(B(i))); 
end
P=closetozeroroundoff(C);

B=(rank(P)==n)

%if basis
%Part (1)
    %
    %
%Part (2) 
q=P*r
q=transpose(closetozeroroundoff(q))
R=poly2sym(q)
fprintf('The coordinates of the polynomial R with respect to the basis P are % \ n’)

%outputs

%if not basis 
sprintf('The polynomials in B do not form a basis for P/d,n-1')
fprintf('The reduced echelon form of P is  \ n')
A=rref(P)


return
%end program 