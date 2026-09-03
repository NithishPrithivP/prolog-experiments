%Facts
male(john).
female(mary).
male(tom)
parent(john,mary).
parent(mary,tom).
%Rules
father(X,Y):-male(X),parent(X,Y).
mother(X,Y):-female(X),parent(X,Y).
grandparent(X,Y) :- parent(X,Z), parent(Z,Y).