father_of(mark,joe).
father_of(joe,paul).
father_of(joe,mary).
mother_of(jane,paul).
mother_of(jane,mary).
parent_of(X,Y) :- father_of(X,Y).
parent_of(X,Y) :- mother_of(X,Y).
grandfather_of(X,Y) :-father_of(X,Z),father_of(Z,Y).
male(paul).
male(joe).
male(mark).
female(mary).
female(jane).
