s(s(NP, VP)) --> np(NP), vp(VP).
np(np(PropN)) --> propn(PropN).
np(np(CD, UN, N)) --> cd(CD), un(UN), n(N).
vp(vp(V, NP, ADJ)) --> v(V), np(NP), adj_phrase(ADJ).

propn(propn('Nam')) --> ['Nam'].
v(v('co')) --> ['co'].
cd(cd('mot')) --> ['mot'].
un(un('cuon')) --> ['cuon'].
n(n('sach')) --> ['sach'].
adj_phrase(adj_phrase(ADV, ADJ)) --> adv(ADV), adj(ADJ).
adv(adv('rat')) --> ['rat'].
adj(adj('hay')) --> ['hay'].

