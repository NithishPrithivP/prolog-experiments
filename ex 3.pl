state(2,0).

state(X,Y) :-
    X < 4,
    write('Fill 4-Gallon Jug: '),
    write((X,Y)),
    write(' -> '),
    write((4,Y)),
    nl,
    state(4,Y).

state(X,Y) :-
    Y < 3,
    write('Fill 3-Gallon Jug: '),
    write((X,Y)),
    write(' -> '),
    write((X,3)),
    nl,
    state(X,3).

state(X,Y) :-
    X > 0,
    write('Empty 4-Gallon Jug: '),
    write((X,Y)),
    write(' -> '),
    write((0,Y)),
    nl,
    state(0,Y).

state(X,Y) :-
    Y > 0,
    write('Empty 3-Gallon Jug: '),
    write((X,Y)),
    write(' -> '),
    write((X,0)),
    nl,
    state(X,0).

goal :-
    state(0,0).__