% Quick Start


%temp_cat(T, C) :- T < 10, C = cold.
%temp_cat(T, C) :- T >= 10, T < 25, C = warm.
%temp_cat(T, C) :- T >= 25, C = hot.

% same as above but using a different syntax

temp_cat(T, cold) :- T < 10.
temp_cat(T, warm) :- T >= 10, T < 25.
temp_cat(T, hot) :- T >= 25.

% Example query:
parent(ben, anna).
parent(ben, mia).

parent(eva, anna).
parent(eva, mia).

parent(mia, mike).

parent(mike, tom).
parent(mike, bob).

ancestor(A, B) :- parent(A, B).
ancestor(A, B) :- parent(A, X), ancestor(X, B).

%% FACTORIAL
factorial(N, F) :-
    N = 0,
    F = 1.
%% same as above but using a different syntax
factorial(0, 1).

factorial(N, F) :-
    N > 0,
    X is N - 1,
    factorial(X, Y),
    F is Y * N.

%% GCD
gcd(A, B, G) :-
    A = B,
    A = G.

gcd(A, B, G) :-
    A > B,
    X is A - B,
    gcd(X, B, G).

gcd(A, B, G) :-
    B > A,
    X is B - A,
    gcd(A, X, G).
