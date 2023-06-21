s(s(X,Y)) --> np(X), vp(Y).
np(np(X)) --> propn(X).
np(np(X)) --> n(X).
np(np(X)) --> nom(X).
np(np(X,Y)) --> pp(X), n(Y).
np(np(X,Y)) --> n(X), propn(Y).
np(np(X,Y)) --> n(X), n(Y).
np(np(X,Y)) --> n(X), pp(Y).
np(np(X,Y)) --> pp(X), n(Y).
np(np(X,Y)) --> n(X), adjp(Y).
np(np(X,Y)) --> det(X), nom(Y).
np(np(X,Y)) --> nom(X), adjp(Y).
np(np(X,Y,Z)) --> n(X), adjp(Y), adjp(Z).
vp(vp(X,Y,Z)) --> advp(X), vp(Y), pp(Z).
vp(vp(X,Y)) --> v(X), vp(Y).
vp(vp(X,Y)) --> v(X), np(Y).
vp(vp(X,Y,Z)) --> v(X), np(Y), pp(Z).
vp(vp(X,Y,Z)) --> v(X), vp(Y), pp(Z).
vp(vp(X,Y)) --> v(X), pp(Y).
vp(vp(X,Y,Z)) --> v(X), np(Y), np(Z).
vp(vp(X,Y,Z)) --> v(X), np(Y), vp(Z).
vp(vp(X,Y,Z)) --> v(X), np(Y), advp(Z).
vp(vp(X,Y)) --> advp(X), pp(Y).
vp(vp(X,Y)) --> advp(X), vp(Y).
vp(vp(X,Y,Z)) --> advp(X), vp(Y), pp(Z).
vp(vp(X,Y)) --> adjp(X), np(Y).
det(det(X)) --> cd(X).
nom(nom(X,Y)) --> n(X), n(Y).
nom(nom(X,Y)) --> un(X), n(Y).
nom(nom(X,Y,Z)) --> un(X), n(Y), adjp(Z).
nom(nom(X,Y,Z,T)) --> un(X), n(Y), adjp(Z), adjp(T).
pp(pp(X)) --> p(X).
pp(pp(X,Y)) --> p(X), np(Y).
adjp(adjp(X,Y)) --> advp(X), adj(Y).
adjp(adjp(X)) --> adj(X).
advp(advp(X)) --> adv(X).
advp(advp(X,Y)) --> adv(X), vp(Y).
propn(propn(nam)) --> [nam].
propn(propn(lan)) --> [lan].
n(n(sach)) --> [sach].
n(n(thu,vien)) --> [thu,vien].
n(n(truong)) --> [truong].
n(n(nha)) --> [nha].
n(n(nha,sach)) --> [nha,sach].
n(n(nha,truong)) --> [nha,truong].
v(v(dinh)) --> [dinh].
v(v(doc)) --> [doc].
v(v(thich)) --> [thich].
v(v(o)) --> [o].
v(v(tang)) --> [tang].
v(v(mua)) --> [mua].
v(v(co)) --> [co].
p(p(cua)) --> [cua].
p(p(gan)) --> [gan].
adv(adv(rat)) --> [rat].
adv(adv(hay)) --> [hay].
adv(adv(moi)) --> [moi].
adj(adj(moi)) --> [moi].
adj(adj(hay)) --> [hay].
cd(cd(mot)) --> [mot].
cd(cd(nhieu)) --> [nhieu].
cd(cd(may)) --> [may].
un(un(cuon)) --> [cuon].
