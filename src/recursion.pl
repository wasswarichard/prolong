% Facts
parent(ben, anna).
parent(ben, mia).

parent(eva, anna).
parent(eva, mia).

parent(mia, mike).

parent(mia, tom).
parent(mia, bob).


% Rules
ancestor(A, B) :- parent(A, B).
ancestor(A, B) :- parent(A, X), ancestor(X, B).
% A is a ancestor of B if A is a parent of B or A is a parent of some ancestor of B