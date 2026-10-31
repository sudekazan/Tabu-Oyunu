import 'package:flutter/material.dart';

// Premium kategori verisi artık assets/data/*.json dosyalarında (bkz.
// lib/data/kelime_deposu.dart). Bu dosyada sadece kategori enum'ı ve
// UI için isim/ikon eşlemeleri kalıyor — bunlar kod, veri değil.

/// Premium kategori tanımları (ileride yeni kategoriler eklendikçe genişletilir)
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
