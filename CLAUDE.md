# Tabu (TabuOyunu)
Arkadaşlarla oynanan kelime tahmin oyunu: 2–8 oyuncu, kategoriler, süreli turlar. Premium: reklamsız, sınırsız pas, premium kategoriler. README'ye göre mağaza yayını adımları henüz tamamlanmadı.

# Teknoloji
- Flutter, sunucu ve Firebase yok. Kayıt: shared_preferences.
- Reklam: AdMob (`ADMOB_KURULUM.md`). Satın alma: `in_app_purchase` (RevenueCat değil), ürün `tabu_premium_lifetime`.
- Dil: gen-l10n, şimdilik yalnızca `lib/l10n/app_tr.arb`.

# Yapı
- Oyun mantığı: `lib/core/game_engine.dart`. Saf Dart, testli.
- Kelimeler: `assets/data/*.json` (`free_*`, `premium_*`, `ana_havuz.json`); yükleme `lib/data/kelime_deposu.dart`.
- Reklam: `lib/core/reklam_servisi.dart`. Satın alma: `lib/core/premium_satin_alma_servisi.dart`.
- Ekranlar: `lib/screens/`. Yollar ve tema: `lib/core/app_routes.dart`, `app_theme.dart`.

# Komutlar
```bash
flutter analyze
flutter test
flutter gen-l10n   # ARB dosyası değişince
```

# Kurallar
- Kelime eklerken: tekrar yok, kelimenin kendisi yasaklı kelimeler arasında geçmez, uygunsuz ya da aşırı teknik kelime yok.
- Yeni metni `app_tr.arb` dosyasına ekle, koda yazma.
- Oyun kuralı değişirse `test/game_engine_test.dart` testlerini güncelle.
- Commit biçimi: emir kipinde düz Türkçe cümle ("Oyun mantığını GameEngine'e ayır").

# Son kararlar
- 2026-10-31: Kelime verisi Dart dosyalarından `assets/data/*.json` dosyalarına taşındı.
- 2026-10-31: Oyun mantığı GameEngine'e ayrıldı; lokalizasyon altyapısı (gen-l10n) kuruldu.
