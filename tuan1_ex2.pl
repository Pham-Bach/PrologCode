father_of(a,c).
father_of(a,f).
father_of(a,d).
father_of(a,e).

mother_of(b,c).
mother_of(b,f).
mother_of(b,d).
mother_of(b,e).

son_of(X,Y) :-parent(Y,X),male(X).
daughter_of(X,Y) :-parent(Y,X),female(X).


wife(b,a).
wife(X,Y) :-husband(Y,X).

parent(X,Y) :-father_of(X,Y).
parent(X,Y) :-mother_of(X,Y).

brother_of(X,Y) :-parent(Z,X),parent(Z,Y),male(X).
sister_of(X,Y) :-parent(Z,X),parent(Z,Y),female(X).

male(a).
male(c).
male(f).

female(b).
female(d).
female(e).

age_of(a,70).
age_of(b,68).
age_of(c,48).
age_of(d,47).
age_of(e,46).
age_of(f,45).

age(70).
age(68).
age(48).
age(47).
age(46).
age(45).



