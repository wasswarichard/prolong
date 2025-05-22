%complex terms or structure


%Your Prolog predicates for vertical and horizontal lines have a small issue:
%the vertical line predicate repeats the same point for both ends, which makes the line zero-length (both points identical).
%Also, your horizontal line predicate allows any points with the same Y but different X’s, which is correct.

% A line is vertical if both points share the same X coordinate but different Y coordinates
%\+(Y1 = Y2) IS THE SAME AS X1 \= X2


vertical(line(point(X, Y1), point(X, Y2))).

% A line is horizontal if both points share the same Y coordinate but different X coordinates
horizontal(line(point(X1, Y), point(X2, Y))) :- \+(X1 = X2).
%
%?- vertical(X).
%X = line(point(_A, _), point(_A, _)).

