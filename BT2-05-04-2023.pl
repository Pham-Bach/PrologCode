%s(sentence(X,Y)) --> np(X), vp(Y).

np(nounphase(X)) --> propn(X).
np(nounphase(X)) --> n(X).
vp(verbphase(X,Y)) --> v(X), np(Y).

propn(propnoun(nam)) --> [nam].
propn(propnoun(lan)) --> [lan].

n(noun(sach)) --> [sach].
n(noun(truong)) --> [truong].
n(noun(thu-vien)) --> [thu-vien].


v(verb(doc)) --> [doc].
v(verb(thich)) --> [thich].
v(verb(tang)) --> [tang].
v(verb(co)) --> [co].

%np(nounphase(doc_sach_o_thu_vien)) -->

s(sentence(
      np(propn(nam)),vp(verbphase(
             v_thich(thich), np(nounphase(
                                    v_doc(doc),n_sach(sach),pp(prep(
                                                                   p_o(o),n_thu_vien(thu_vien), p_cua(cua), n_truong(truong)
                                                               ))
                                ))
         ))
  )).

