import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'kelime_karti.dart';
import 'premium/kategoriler/index.dart';

/// Tüm kelime kartı verisini `assets/data/*.json` dosyalarından okuyup
/// önbellekleyen merkezi depo.
///
/// Önceden ~3900 kelime kartının tamamı derleme zamanında ayrıştırılan Dart
/// listeleri olarak 12 ayrı dosyada tutuluyordu. Artık veri koddan ayrı JSON
/// dosyalarında — bir kelime eklemek/düzeltmek için Dart dosyası değiştirip
/// yeniden derlemeye gerek yok, sadece ilgili JSON dosyası güncellenir.
class KelimeDeposu {
  KelimeDeposu._();

  static final Map<String, Future<List<KelimeKarti>>> _cache = {};

  static Future<List<KelimeKarti>> _yukle(String dosyaAdi) {
    return _cache.putIfAbsent(dosyaAdi, () async {
      final String raw = await rootBundle.loadString('assets/data/$dosyaAdi.json');
      final List<dynamic> liste = json.decode(raw) as List<dynamic>;
      return liste
          .map((e) => KelimeKarti.fromJson(e as Map<String, dynamic>))
          .toList(growable: false);
    });
  }

  static Future<List<KelimeKarti>> anaHavuz() => _yukle('ana_havuz');
  static Future<List<KelimeKarti>> freeHavuz() => _yukle('free_havuz');
  static Future<List<KelimeKarti>> freeCocuklar() => _yukle('free_cocuklar');
  static Future<List<KelimeKarti>> premiumOrtaSeviye() => _yukle('premium_orta_seviye');
  static Future<List<KelimeKarti>> premiumMarkalar() => _yukle('premium_markalar');
  static Future<List<KelimeKarti>> premiumBilimTeknoloji() => _yukle('premium_bilim_teknoloji');
  static Future<List<KelimeKarti>> premiumTarihKultur() => _yukle('premium_tarih_kultur');
  static Future<List<KelimeKarti>> premiumSpor() => _yukle('premium_spor');
  static Future<List<KelimeKarti>> premiumFilmDiziler() => _yukle('premium_film_diziler');
  static Future<List<KelimeKarti>> premiumYemekMutfak() => _yukle('premium_yemek_mutfak');
  static Future<List<KelimeKarti>> premiumUlkelerKultur() => _yukle('premium_ulkeler_kultur');
  static Future<List<KelimeKarti>> _premiumCocuklarEk() => _yukle('premium_cocuklar_extra');

  /// Premium Çocuklar = Free Çocuklar havuzu + premium'a özel ek kelimeler.
  static Future<List<KelimeKarti>> premiumCocuklar() async {
    final free = await freeCocuklar();
    final ek = await _premiumCocuklarEk();
    return [...free, ...ek];
  }

  static Future<List<KelimeKarti>> kategoriListesi(PremiumKategori kategori) {
    switch (kategori) {
      case PremiumKategori.markalar:
        return premiumMarkalar();
      case PremiumKategori.cocuklar:
        return premiumCocuklar();
      case PremiumKategori.bilim_teknoloji:
        return premiumBilimTeknoloji();
      case PremiumKategori.tarih_kultur:
        return premiumTarihKultur();
      case PremiumKategori.spor:
        return premiumSpor();
      case PremiumKategori.film_diziler:
        return premiumFilmDiziler();
      case PremiumKategori.yemek_mutfak:
        return premiumYemekMutfak();
      case PremiumKategori.ulkeler_kultur:
        return premiumUlkelerKultur();
    }
  }

  /// 8 premium kategorinin tamamı birleşik.
  static Future<List<KelimeKarti>> tumPremiumKategoriler() async {
    final sonuc = <KelimeKarti>[];
    for (final k in PremiumKategori.values) {
      sonuc.addAll(await kategoriListesi(k));
    }
    return sonuc;
  }

  /// "Premium Havuz": ana havuz + tüm premium kategoriler + orta seviye kelimeler.
  static Future<List<KelimeKarti>> premiumHavuz() async {
    final ana = await anaHavuz();
    final kategoriler = await tumPremiumKategoriler();
    final orta = await premiumOrtaSeviye();
    return [...ana, ...kategoriler, ...orta];
  }
}

// ---- Eski dış API ile uyumlu yardımcı fonksiyonlar ----
// OyunSayfasi bu 4 fonksiyonu çağırıyordu; imzaları aynı, sadece artık
// Future dönüyorlar (JSON asset'i ilk kullanımda diskten okunduğu için).

Future<List<KelimeKarti>> karisikFreeKelimeler() async {
  final liste = List<KelimeKarti>.from(await KelimeDeposu.freeHavuz());
  liste.shuffle();
  return liste;
}

Future<List<KelimeKarti>> karisikFreeCocuklar() async {
  final liste = List<KelimeKarti>.from(await KelimeDeposu.freeCocuklar());
  liste.shuffle();
  return liste;
}

Future<List<KelimeKarti>> karisikPremiumHavuz() async {
  final liste = List<KelimeKarti>.from(await KelimeDeposu.premiumHavuz());
  liste.shuffle();
  return liste;
}

Future<List<KelimeKarti>> karisikPremiumKategorilerinden(Set<PremiumKategori> kategoriler) async {
  if (kategoriler.isEmpty) return karisikPremiumHavuz();
  final birlesik = <KelimeKarti>[];
  for (final k in kategoriler) {
    birlesik.addAll(await KelimeDeposu.kategoriListesi(k));
  }
  birlesik.shuffle();
  return birlesik;
}
