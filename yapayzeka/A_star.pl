/*
    BİLECİK ŞEYH EDEBALİ ÜNİVERSİTESİ
    BİLGİSAYAR MÜHENDİSLİĞİ
    YAPAY ZEKA - ÖDEV
    Aleyna ÇELİK
    A* Algoritması ile Ankara-Bilecik yol güzergahı
    ANKARA - BİLECİK arası gidiş güzergahını bulan PROLOG kodu.
*/

%illerin bilecige olan Kus ucusu mesafeleri

kusUcusu(ankara, 246).
kusUcusu(kecioren, 243).
kusUcusu(kazan, 230).
kusUcusu(sincan, 223).
kusUcusu(etimeskut, 235).
kusUcusu(yenimahalle, 232).
kusUcusu(sincan, 223).
kusUcusu(ayas, 199).
kusUcusu(polatli, 189).
kusUcusu(gudul, 193)
kusUcusu(beypazari, 165).
kusUcusu(nallihan, 116).
kusUcusu(mihaliccik, 133).
kusUcusu(seben, 138).
kusUcusu(kibriscik, 180).
kusUcusu(mudurnu, 110).
kusUcusu(goynuk, 72).
kusUcusu(saricakaya, 55).
kusUcusu(tepebasi, 54).
kusUcusu(alpu, 97).
kusUcusu(mihalgazi, 52).
kusUcusu(yenipazar, 45).
kusUcusu(inhisar, 36).
kusUcusu(sogut, 22).
kusUcusu(golpazari, 29).
kusUcusu(yenipazar, 45).
kusUcusu(bozuyuk, 26).
kusUcusu(golpazari, 29).
kusUcusu(b_merkez, 0).




% Ankara'dan başlayarak her şehir arası mesafe toplanarak devam etmektedir.

karadanGidilenYol(anakara, kecioren, 10).
karadanGidilenYol(anakara, kazan, 50).
karadanGidilenYol(anakara, sincan, 62).
karadanGidilenYol(anakara, etimeskut, 20).
karadanGidilenYol(anakara, yenimahalle, 15).
karadanGidilenYol(etimeskut, yenimahalle, 30).
karadanGidilenYol(etimeskut, sincan, 28).
karadanGidilenYol(sincan, ayas, 64).
karadanGidilenYol(sincan, polatli, 93).
karadanGidilenYol(ayas, gudul, 96).
karadanGidilenYol(ayas, beypazari, 106).
karadanGidilenYol(beypazari, nallihan, 100).
karadanGidilenYol(beypazari, mihaliccik, 109).
karadanGidilenYol(beypazari, seben, 117).
karadanGidilenYol(beypazari, kibriscik, 91).
karadanGidilenYol(nallihan, mudurnu, 146).
karadanGidilenYol(nallihan, goynuk, 165).
karadanGidilenYol(nallihan, saricakaya, 155).
karadanGidilenYol(nallihan, tepebasi, 220).
karadanGidilenYol(nallihan, alpu, 215).
karadanGidilenYol(saricakaya, mihalgazi, 168).
karadanGidilenYol(saricakaya, yenipazar, 185).
karadanGidilenYol(saricakaya, inhisar, 183).
karadanGidilenYol(inhisar, sogut, 211).
karadanGidilenYol(inhisar, golpazari, 231).
karadanGidilenYol(inhisar, yenipazar, 218).
karadanGidilenYol(sogut, bozuyuk, 234).
karadanGidilenYol(sogut, golpazari, 277).
karadanGidilenYol(sogut, b_merkez, 241).


% Ankara'dan dan Sincan' a gidersem gidilecek karayolu ve Sincan' dan Bileciğe olan
% kuş uçuşu mesafesinin toplamı

gidilecekYol(etimeskut, 245).
gidilecekYol(sincan, 251).
gidilecekYol(ayas, 263).
gidilecekYol(beypazari, 271).
gidilecekYol(nallihan, 216).
gidilecekYol(saricakaya, 220).
gidilecekYol(inhisar, 219).
gidilecekYol(sogut, 233).
gidilecekYol(b_merkez, 241).



yolGidilir(ankara, kecioren).
yolGidilir(ankara, kazan).
yolGidilir(ankara, sincan).
yolGidilir(ankara, etimeskut).
yolGidilir(ankara, yenimahalle).


yolGidilir(etimeskut, sincan).
yolGidilir(etimeskut, yenimahalle).

yolGidilir(sincan, ayas).
yolGidilir(sincan, polatli).

yolGidilir(ayas, gudul).
yolGidilir(ayas, beypazari).

yolGidilir(beypazari, nallihan).
yolGidilir(beypazari, mihaliccik).
yolGidilir(beypazari, seben).
yolGidilir(beypazari, kibriscik).

yolGidilir(nallihan, mudurnu).
yolGidilir(nallihan, goynuk).
yolGidilir(nallihan, saricakaya).
yolGidilir(nallihan, tepebasi).
yolGidilir(nallihan, alpu).

yolGidilir(saricakaya, mihalgazi).
yolGidilir(saricakaya, yenipazar).
yolGidilir(saricakaya, inhisar).

yolGidilir(inhisar, sogut).
yolGidilir(inhisar, golpazari).
yolGidilir(inhisar, yenipazar).

yolGidilir(sogut, bozuyuk).
yolGidilir(sogut, golpazari).
yolGidilir(sogut, b_merkez).


hesapla(X, Y) :-
            karadanGidilenYol(X, Y, H),
            kusUcusu(Y, B),
            T is H + B,
            gidilecekYol(Y, R),
            T =:= R,
            writeln(T).

gidilir(X, Y) :- yolGidilir(X, Y), write(Y).
gidilir(X, Y) :-
            yolGidilir(X, Z),
            write(Z), write(':'),
            hesapla(Z, T),
            gidilir(Z, Y).
