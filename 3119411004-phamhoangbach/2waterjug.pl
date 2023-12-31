% Trạng thái ban đầu: J1 chứa 4 lít, J2 chứa 3 lít.
initial_state(state(0, 0)).

% Trạng thái đích: Một trong hai bình chứa 2 lít.
goal_state(state(2, _)).
goal_state(state(_, 2)).

% Các hành động có thể thực hiện
% Đổ nước từ J1 sang J2
move(state(J1, J2), state(NewJ1, NewJ2)) :-
    J1 > 0, J2 < 3,
    Diff is min(J1, 3 - J2),
    NewJ2 is J2 + Diff,
    NewJ1 is J1 - Diff.

% Đổ nước từ J2 sang J1
move(state(J1, J2), state(NewJ1, NewJ2)) :-
    J2 > 0, J1 < 4,
    Diff is min(J2, 4 - J1),
    NewJ1 is J1 + Diff,
    NewJ2 is J2 - Diff.

% Lấp đầy J1
move(state(J1, J2), state(4, J2)) :-
    J1 < 4.

% Lấp đầy J2
move(state(J1, J2), state(J1, 3)) :-
    J2 < 3.

% Đổ hết nước trong J1
move(state(J1, J2), state(0, J2)) :-
    J1 > 0.

% Đổ hết nước trong J2
move(state(J1, J2), state(J1, 0)) :-
    J2 > 0.

% Tìm đường đi từ trạng thái hiện tại đến trạng thái đích
path(CurrentState, CurrentState, _, []) :- !.
path(CurrentState, GoalState, Visited, [Move|Moves]) :-
    move(CurrentState, NextState),
    not(member(NextState, Visited)),
    path(NextState, GoalState, [NextState|Visited], Moves),
    Move = (CurrentState, NextState).

%path(state(0, 0), state(2, _), [state(0, 0)], Moves).
