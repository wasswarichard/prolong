% swipl variables.pl


% Facts
parent(ben, anna).
parent(ben, bill).
parent(eva, anna).
parent(eva, mia).
parent(eva, bill).
parent(mia, mike).
parent(mia, jane).

% Rules
child(A, B) :- parent(B, A).
grand_parent(A, B) :- parent(A, C), parent(C, B).
grand_child(A, B) :- child(A, C), child(C, B).
sibling(A, B) :- parent(C, A), parent(C, B), \+ (A = B).


%?- [variables].
%true.
%2
%?- sibling(mike, jane).
%true.


rule_x(A,B) :- child(X, A), child(X, B), \+ (A = B).

%?- parent(ben, _).  just checking if ben is a parent

%?- parent(_, mike).
%true.
