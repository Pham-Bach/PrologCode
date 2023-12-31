vertex(vertex0).
vertex(vertex2).
vertex(vertex5).
vertex(vertex6).
vertex(vertex7).
vertex(vertex9).
vertex(vertex10).
vertex(vertex12).
vertex(vertex13).
vertex(vertex14).

edge(vertex0, vertex2).
edge(vertex2, vertex5).
edge(vertex5, vertex6).
edge(vertex5, vertex7).
edge(vertex6, vertex9).
edge(vertex7, vertex10).
edge(vertex9, vertex12).
edge(vertex10, vertex12).
edge(vertex12, vertex13).
edge(vertex13, vertex14).

% Định nghĩa mục tiêu
goal(vertex14).

% Hàm DFS
dfs(Current, Goal, Visited, Path) :- % DFS với đỉnh hiện tại Current
    Current = Goal, % Nếu đỉnh hiện tại là mục tiêu
    reverse(Visited, Path). % Đảo ngược danh sách đã đi qua để được đường đi

dfs(Current, Goal, Visited, Path) :- % DFS với đỉnh hiện tại Current
    Current \= Goal, % Nếu đỉnh hiện tại khác mục tiêu
    edge(Current, Next), % Chọn đỉnh kế tiếp từ danh sách cạnh
    \+ member(Next, Visited), % Đảm bảo không quay lại đỉnh đã đi qua
    dfs(Next, Goal, [Next | Visited], Path). % Tiếp tục DFS với đỉnh kế tiếp

% Quy tắc đóng gói để lưu kết quả vào biến Path
find_path(Start, Goal, Path) :-
    dfs(Start, Goal, [Start], Path).

% Gọi quy tắc đóng gói find_path() với đỉnh khởi đầu là vertex0 và đỉnh
% mục tiêu là vertex14 để tìm đường đi từ vertex0 đến vertex14
%find_path(vertex0, vertex14, Path).
