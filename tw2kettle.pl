% move/4 predicate takes in the current state of the jugs, the capacity of the first jug, the capacity of the second jug, and returns the next state of the jugs
move([A, B], [CapA, B], CapA, _) :-
    CapA >= A,
    CapA =< B.
move([A, B], [A, CapB], _, CapB) :-
    CapB >= B,
    CapB =< A.
move([A, B], [0, B], _, _) :-
    A =< B.
move([A, B], [A, 0], _, _) :-
    B =< A.

% solve/3 predicate takes in the initial state, the goal state, and returns the solution path
solve_dfs(Start, Goal, Path, Path) :-
    goal_state(Goal),
    member(Goal, Path),
    write('Solution Path: '), nl,
    write_path(Path).
solve_dfs(Start, Goal, Visited, Path) :-
    move(Start, Next, CapA, CapB),
    \+ member(Next, Visited),
    solve_dfs(Next, Goal, [Next|Visited], Path).

% solve/2 predicate takes in the initial state and the goal state and calls solve_dfs/4 to get the solution path
solve(Start, Goal) :-
    solve_dfs(Start, Goal, [Start], Path).

% goal_state/1 predicate checks if the current state is a goal state (either [2, _] or [_, 2])
goal_state([2, _]).
goal_state([_, 2]).

% write_path/1 predicate prints out the solution path
write_path([]).
write_path([H|T]) :-
    write_state(H),
    write_path(T).

% write_state/1 predicate prints out the state of the jugs
write_state([A, B]) :-
    write(A),
    write('-'),
    write(B),
    nl.
