vertex0(0,0,0,0,0).
vertex2(1,0,1,0,1).
vertex5(0,0,1,0,0).
vertex6(1,1,1,0,1).
vertex7(1,0,1,1,1).
vertex9(0,1,0,0,0).
vertex10(0,0,0,1,0).
vertex12(1,1,0,1,1).
vertex13(0,1,0,1,0).
vertex14(1,1,1,1,1).

edge(vertex0(0,0,0,0,0), vertex2(1,0,1,0,1)).
edge(vertex2(1,0,1,0,1), vertex5(0,0,1,0,0)).
edge(vertex5(0,0,1,0,0), vertex6(1,1,1,0,1)).
edge(vertex6(1,1,1,0,1), vertex7(1,0,1,1,1)).
edge(vertex7(1,0,1,1,1), vertex9(0,1,0,0,0)).
edge(vertex9(0,1,0,0,0), vertex10(0,0,0,1,0)).
edge(vertex10(0,0,0,1,0), vertex12(1,1,0,1,1)).
edge(vertex12(1,1,0,1,1), vertex13(0,1,0,1,0)).
edge(vertex13(0,1,0,1,0), vertex14(1,1,1,1,1)).

goal(vertex14(1,1,1,1,1)).

dfs(CNode, CPath, [CNode | CPath]):- goal(CNode).
dfs(CNode, CPath, FPath) :- edge(CNode,X), \+member(X,CPath), dfs(X, [CNode | CPath], FPath).

try(p):- dfs(vertex0(0,0,0,0,0), [], p).
