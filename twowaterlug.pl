% Define the possible moves
move([X, Y], [CapX, Y], _) :-
    capacity(jug3, CapX),
    X \= CapX.
move([X, Y], [0, Y], _) :-
    X > 0.
move([X, Y], [X, CapY], _) :-
    capacity(jug4, CapY),
    Y \= CapY.
move([X, Y], [X1, Y1], _) :-
    capacity(jug4, CapY),
    capacity(jug3, CapX),
    X + Y >= CapY,
    X1 is CapX,
    Y1 is Y - (CapX - X).
move([X, Y], [X1, Y1], _) :-
    capacity(jug4, CapY),
    capacity(jug3, _),
    X + Y < CapY,
    X1 is X + Y,
    Y1 is 0.
