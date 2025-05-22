%%% Getting started with Prolog %%%
% This is a simple Prolog database program that allows you to add, remove,
% start the program and load the database.
% swipl dp.pl
% [db]. loads the knowledge base from the file 1_db.pl
% ?- start. starts the program
% examples of queries: woman(sara).
% variables start with capital letters example X



%% Facts% Facts are the basic building blocks of a Prolog program.
%woman(anna).
%woman(lena).
%woman(sara).
%playsPiano(sara).
%party.


woman(anna).
woman(lena).
woman(sara).


man(leo).
man(tom).

loves(leo, anna).
loves(leo, apple).
loves(tom, anna).
loves(sara, tom).
loves(sara, apple).

%?- loves(leo, X), woman(X).

%?- woman(X), man(Y).
%X = anna,
%Y = leo

%?- listing(woman).
%woman(anna).
%woman(lena).
%woman(sara).


%?- listing(man).
%man(leo).
%man(tom).






