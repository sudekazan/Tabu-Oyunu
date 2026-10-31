import 'package:flutter_test/flutter_test.dart';
import 'package:tabu/data/kelime_deposu.dart';
import 'package:tabu/data/premium/kategoriler/index.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('KelimeDeposu (assets/data/*.json)', () {
    test('ana havuz JSON dosyasından yüklenebiliyor ve boş değil', () async {
      final liste = await KelimeDeposu.anaHavuz();
      expect(liste, isNotEmpty);
      expect(liste.first.yasakliKelimeler.length, 5);
    });

    test('free havuz JSON dosyasından yüklenebiliyor', () async {
      final liste = await KelimeDeposu.freeHavuz();
      expect(liste, isNotEmpty);
    });

    test('premium çocuklar = free çocuklar + premium ek kelimeler', () async {
      final free = await KelimeDeposu.freeCocuklar();
      final premium = await KelimeDeposu.premiumCocuklar();
      expect(premium.length, greaterThan(free.length));
    });

    test('premium havuz = ana havuz + tüm kategoriler + orta seviye', () async {
      final ana = await KelimeDeposu.anaHavuz();
      final havuz = await KelimeDeposu.premiumHavuz();
      expect(havuz.length, greaterThan(ana.length));
    });

    test('karisikPremiumKategorilerinden tek kategori için doğru listeyi döner', () async {
      final spor = await KelimeDeposu.premiumSpor();
      final sonuc = await karisikPremiumKategorilerinden({PremiumKategori.spor});
      expect(sonuc.length, spor.length);
    });

    test('karisikFreeKelimeler karışık ama aynı kelimeleri içerir', () async {
      final orijinal = await KelimeDeposu.freeHavuz();
      final karisik = await karisikFreeKelimeler();
      expect(karisik.length, orijinal.length);
      expect(
        karisik.map((e) => e.kelime).toSet(),
        orijinal.map((e) => e.kelime).toSet(),
      );
    });
  });
}
