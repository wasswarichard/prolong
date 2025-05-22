
% swipl rules.pl
playsPiano(sara).
playsPiano(anna).
happy(anna).
happy(sara).

sings(tom).

sings(sara) :- happy(sara).

%% AND
sings(anna) :- happy(anna), playsPiano(anna).


%% OR
sings(lena) :- happy(lena).
sings(lena) :- playsPiano(lena).


