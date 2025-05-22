%temp_cat(T, C) :- T < 10, C = 'cold'.
%
%temp_cat(T, C) :- T >= 10, T < 25, C = 'warm'.
%
%temp_cat(T, C) :- T >= 25, C = 'hot'.

%?- temp_cat(5, C).
%true.
%?- temp_cat(15, C).
%true.
%?- temp_cat(30, C).
%true.

% simplified version
temp_cat(T, cold) :- T < 10.
temp_cat(T, warm) :- T >= 10, T < 25.
temp_cat(T, hot) :- T >= 25.