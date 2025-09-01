export 'markalar.dart';
export 'cocuklar.dart';
export 'bilim_teknoloji.dart';
export 'tarih_kultur.dart';
export 'spor.dart';
export 'film_diziler.dart';
export 'yemek_mutfak.dart';
export 'ulkeler_kultur.dart';
import 'package:flutter/material.dart';
import '../../kelimeler.dart';
import 'markalar.dart';
import 'cocuklar.dart';
import 'bilim_teknoloji.dart';
import 'tarih_kultur.dart';
import 'spor.dart';
import 'film_diziler.dart';
import 'yemek_mutfak.dart';
import 'ulkeler_kultur.dart';

// Premium tarafındaki kategori listelerini tek bir yerde birleştirir
final List<KelimeKarti> premiumKategorilerToplami = [
  ...premiumMarkalar,
  ...premiumCocuklar,
  ...premiumBilimTeknoloji,
  ...premiumTarihKultur,
  ...premiumSpor,
  ...premiumFilmDiziler,
  ...premiumYemekMutfak,
  ...premiumUlkelerKultur,
];

// Premium kategori tanımları (ileride yeni dosyalar eklendikçe genişletilir)
enum PremiumKategori {
  markalar,
  cocuklar,
  bilim_teknoloji,
  tarih_kultur,
  spor,
  film_diziler,
  yemek_mutfak,
  ulkeler_kultur,
}

const Map<PremiumKategori, String> premiumKategoriAdlari = {
  PremiumKategori.markalar: 'Markalar',
  PremiumKategori.cocuklar: 'Çocuklar',
  PremiumKategori.bilim_teknoloji: 'Bilim & Teknoloji',
  PremiumKategori.tarih_kultur: 'Tarih & Kültür',
  PremiumKategori.spor: 'Spor',
  PremiumKategori.film_diziler: 'Film & Diziler',
  PremiumKategori.yemek_mutfak: 'Yemek & Mutfak',
  PremiumKategori.ulkeler_kultur: 'Ülkeler & Kültür',
};

const Map<PremiumKategori, IconData> premiumKategoriIconlari = {
  PremiumKategori.markalar: Icons.business,
  PremiumKategori.cocuklar: Icons.child_care,
  PremiumKategori.bilim_teknoloji: Icons.science,
  PremiumKategori.tarih_kultur: Icons.history,
  PremiumKategori.spor: Icons.sports_soccer,
  PremiumKategori.film_diziler: Icons.movie,
  PremiumKategori.yemek_mutfak: Icons.restaurant,
  PremiumKategori.ulkeler_kultur: Icons.public,
};

List<KelimeKarti> premiumKategoriListesi(PremiumKategori kategori) {
  switch (kategori) {
    case PremiumKategori.markalar:
      return premiumMarkalar;
    case PremiumKategori.cocuklar:
      return premiumCocuklar;
    case PremiumKategori.bilim_teknoloji:
      return premiumBilimTeknoloji;
    case PremiumKategori.tarih_kultur:
      return premiumTarihKultur;
    case PremiumKategori.spor:
      return premiumSpor;
    case PremiumKategori.film_diziler:
      return premiumFilmDiziler;
    case PremiumKategori.yemek_mutfak:
      return premiumYemekMutfak;
    case PremiumKategori.ulkeler_kultur:
      return premiumUlkelerKultur;
  }
}


