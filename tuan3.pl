edge([0,0],[4,0]).
edge([0,0],[0,3]).
edge([4,0],[4,3]).
edge([4,0],[1,3]).
edge([0,3],[3,0]).
edge([1,3],[1,0]).
edge([3,0],[3,3]).
edge([1,0],[0,1]).
edge([3,3],[4,2]).
edge([0,1],[4,1]).
edge([4,1],[2,3]).

connect(X,Y) :- edge(X,Y).
connect(X,Y) :- edge(X,Z), connect(Z,Y).

path(X,Y,[X,Y]) :- edge(X,Y).
path(X,Y,[X|Path]) :-
    edge(X,Z),
    path(Z,Y,Path).

