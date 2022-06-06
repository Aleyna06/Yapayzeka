/*
    BİLECİK ŞEYH EDEBALİ ÜNİVERSİTESİ
    BİLGİSAYAR MÜHENDİSLİĞİ
    YAPAY ZEKA - ÖDEV
    Aleyna ÇELİK
    BFS - En iyiyi arama yöntemi ile
    Ankra- Bileck arası gidiş güzergahını bulan PROLOG kodu.
*/

%illerin bilecige olan Kus ucusu mesafeleri



kusUcusu(ankara, 246).
kusUcusu(kecioren, 243).
kusUcusu(kazan, 230).
kusUcusu(sincan, 223).
kusUcusu(etimeskut, 235).
kusUcusu(yenimahalle, 232).
kusUcusu(ayas, 199).
kusUcusu(polatli, 189).
kusUcusu(gunyuzu, 177).
kusUcusu(mihaliccik, 133).
kusUcusu(beypazari, 165).
kusUcusu(celtik, 198).
kusUcusu(beylikova, 116).
kusUcusu(sivrihisar, 153).
kusUcusu(alpu, 97).
kusUcusu(nallihan, 116).
kusUcusu(odunpazari, 75).
kusUcusu(mahmudiye, 112).
kusUcusu(tepebasi, 54).
kusUcusu(inonu, 45).
kusUcusu(mihalgazi, 52).
kusUcusu(saricakaya, 55).
kusUcusu(sogut, 22).
kusUcusu(inhisar, 36).
kusUcusu(bozuyuk, 26).
kusUcusu(golpazari, 29).
kusUcusu(b_merkez, 0).

/*Ankara'dan - Bileciğe gidilebilecek minumun kuç uçuşu güzergahı*/

minkusUcusu(ankara, 246).
minkusUcusu(sincan, 223).
minkusUcusu(polatli, 189).
minkusUcusu(mihaliccik, 133).
minkusUcusu(alpu, 97).
minkusUcusu(tepebasi, 54).
minkusUcusu(sogut, 22).
minkusUcusu(b_merkez, 0).


yolGidilir(ankara, kecioren).
yolGidilir(ankara, kazan).
yolGidilir(ankara, sincan).
yolGidilir(ankara, etimeskut).
yolGidilir(ankara, yenimahalle).

yolGidilir(sincan, ayas).
yolGidilir(sincan, polatli).

yolGidilir(polatli, gunyuzu).
yolGidilir(polatli, mihaliccik).
yolGidilir(polatli, beypazari).
yolGidilir(polatli, celtik).

yolGidilir(mihaliccik, beylikova).
yolGidilir(mihaliccik, sivrihisar).
yolGidilir(mihaliccik, alpu).
yolGidilir(mihaliccik, nallihan).

yolGidilir(alpu, odunpazari).
yolGidilir(alpu, mahmudiye).
yolGidilir(alpu, tepebasi).

yolGidilir(tepebasi, inonu).
yolGidilir(tepebasi, mihalgazi).
yolGidilir(tepebasi, saricakaya).
yolGidilir(tepebasi, sogut).
yolGidilir(tepebasi, inhisar).

yolGidilir(sogut, bozuyuk).
yolGidilir(sogut, golpazari).
yolGidilir(sogut, b_merkez).


gidilir(X, Y) :-  yolGidilir(X, Y), write(Y).
gidilir(X, Y) :-
            yolGidilir(X, Z),
            kusUcusu(Z, M),
            minkusUcusu(Z, M), write(Z),  nl,
            gidilir(Z, Y).
