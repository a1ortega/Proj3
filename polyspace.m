function P=polyspace(B,Q,r)


format rat,
u=sym2poly(B1);
n=length(u);
C=zeros(n); 
for i=1: n
    C( : , i) = transpose(sym2poly(B(i))); 
end
P=closetozeroroundoff(C);

%test if P is a basis for R^n
%for P to be a basis, B must equal n. 
B=(rank(P)==n)

% if basis 
fprintf('The polynomials in B form a basis for P%G \n',(n-1)) 
(1) Find a row vector y of B-coordinates of the polynomial Q. Your output for this part should
contain a message and the row vector y. The message might have a form:    
fprintf(‘the coordinates of the polynomial Q with respect to the basis P are % \ n’) y = closetozeroroundoff(y)
(Hint: to find y, you will be solving a system of equations)

(2) Find the coordinate vector q of the polynomial R with respect to the standard basis, whose B-coordinates is the given vector r.
(Hint: you will be using matrix-vector multiplication to find q.)
Then, calculate the vector:
q=transpose(closetozeroroundoff(q));

The outputs have to be a message similar to the one for part(1) as well as the polynomial R written through the standard basis E using the
entries of the vector q as coefficients. Use the command 
poly2sym applied to the row vector q to get the polynomial R in the required form.

%if not basis 
sprintf(‘The polynomials in B do not form a basis for P/d,n-1')
fprintf(‘the reduced echelon form of P is  \ n’)
A=rref(P)
return
%end program 
