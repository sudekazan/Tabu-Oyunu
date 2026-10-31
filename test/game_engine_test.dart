import 'package:flutter_test/flutter_test.dart';
import 'package:tabu/core/game_engine.dart';
import 'package:tabu/data/kelimeler.dart';

GameEngine _buildEngine({
  int bitisPuani = 30,
  int baslangicPasHakki = 3,
  int kelimeSayisi = 5,
}) {
  final kartlar = List<KelimeKarti>.generate(
    kelimeSayisi,
    (i) => KelimeKarti(kelime: 'Kelime$i', yasakliKelimeler: const ['a', 'b', 'c', 'd', 'e']),
  );
  return GameEngine(
    takim1Adi: 'Takım 1',
    takim2Adi: 'Takım 2',
    oyunSuresi: 60,
    bitisPuani: bitisPuani,
    baslangicPasHakki: baslangicPasHakki,
    kartlar: kartlar,
  );
}

void main() {
  group('GameEngine', () {
    test('doğru cevap, aktif takımın tur ve toplam skorunu artırır', () {
      final engine = _buildEngine();
      engine.dogruCevapVer();
      expect(engine.takim1Skor, 1);
      expect(engine.takim1ToplamSkor, 1);
      expect(engine.takim2Skor, 0);
    });

    test('tabu cezası, aktif takımın skorunu 1 düşürür', () {
      final engine = _buildEngine();
      engine.dogruCevapVer(); // skor 1 olsun
      engine.tabuCezasiUygula();
      expect(engine.takim1Skor, 0);
      expect(engine.takim1ToplamSkor, 0);
    });

    test('oyun, bir takımın TOPLAM skoru bitiş puanına ulaşınca biter', () {
      final engine = _buildEngine(bitisPuani: 3);
      expect(engine.dogruCevapVer(), isFalse);
      expect(engine.dogruCevapVer(), isFalse);
      // 3. doğru cevapta toplam skor bitiş puanına ulaşır -> oyun bitti
      expect(engine.dogruCevapVer(), isTrue);
      expect(engine.oyunBittiMi, isTrue);
    });

    test('tek bir turda yüksek skor yapmak oyunu bitirmez (regresyon testi)', () {
      // Bu test, eski bug'ı (tur skoruna göre bitirme) tekrar gelirse yakalar.
      final engine = _buildEngine(bitisPuani: 100);
      for (var i = 0; i < 10; i++) {
        engine.dogruCevapVer();
      }
      expect(engine.takim1Skor, 10);
      expect(engine.oyunBittiMi, isFalse);
    });

    test('pas hakkı tükenince pasHakkiVarMi false döner', () {
      final engine = _buildEngine(baslangicPasHakki: 1);
      expect(engine.pasHakkiVarMi, isTrue);
      engine.pasKullan();
      expect(engine.kalanPasHakki, 0);
      expect(engine.pasHakkiVarMi, isFalse);
    });

    test('ekstraPasHakkiVer, pas hakkını verilen değere ayarlar', () {
      final engine = _buildEngine(baslangicPasHakki: 0);
      engine.ekstraPasHakkiVer();
      expect(engine.kalanPasHakki, 1);
    });

    test('sonrakiKelime, tüm kelimeler tükenince seti sıfırlayıp devam eder', () {
      final engine = _buildEngine(kelimeSayisi: 3);
      // 3 kelimelik havuzda hepsini tüket.
      engine.ilkKelimeyiIsaretle();
      engine.sonrakiKelime();
      engine.sonrakiKelime();
      expect(engine.kullanilanIndeksler.length, 3);
      // Bir adım daha: havuz tükendiği için set sıfırlanıp sıradaki kelimeye geçmeli.
      engine.sonrakiKelime();
      expect(engine.kullanilanIndeksler, isNotEmpty);
    });

    test('turSkorunuSifirla, sadece aktif takımın TUR skorunu sıfırlar', () {
      final engine = _buildEngine();
      engine.dogruCevapVer(); // takim1Skor = 1, takim1ToplamSkor = 1
      engine.turSkorunuSifirla();
      expect(engine.takim1Skor, 0);
      expect(engine.takim1ToplamSkor, 1); // toplam skor korunur
    });

    test('yeniTurAyarlariniUygula, sirayiDegistir true ise aktif takımı değiştirir', () {
      final engine = _buildEngine();
      expect(engine.aktifTakimIndex, 0);
      engine.yeniTurAyarlariniUygula(pasHakki: 3, sirayiDegistir: true);
      expect(engine.aktifTakimIndex, 1);
    });
  });
}
