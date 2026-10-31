import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data/premium/kategoriler/index.dart';

/// Plan türleri enum'ı
enum PlanType { free, premium }

/// Free kategori türleri
enum FreeKategori { freeHavuz, cocuklar }

/// Free kategori icon'ları
const Map<FreeKategori, IconData> freeKategoriIconlari = {
  FreeKategori.freeHavuz: Icons.inventory_2,
  FreeKategori.cocuklar: Icons.child_care,
};

/// [PlanManager]'ın gerçek (SharedPreferences tabanlı) ve test amaçlı sahte
/// implementasyonlarının uyması gereken arayüz.
abstract class PlanManagerBase {
  Future<PlanType> getPlan();
  Future<void> setPlan(PlanType plan);
  Future<bool> getUnlimitedPass();
  Future<void> setUnlimitedPass(bool value);
}

/// Gerçek SharedPreferences tabanlı plan yönetimi implementasyonu.
class SharedPreferencesPlanManager implements PlanManagerBase {
  static const String _planKey = 'plan_type';
  static const String _unlimitedPassKey = 'premium_unlimited_pass';

  @override
  Future<PlanType> getPlan() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? val = prefs.getString(_planKey);
    if (val == 'premium') return PlanType.premium;
    return PlanType.free;
  }

  @override
  Future<void> setPlan(PlanType plan) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_planKey, plan == PlanType.premium ? 'premium' : 'free');
  }

  @override
  Future<bool> getUnlimitedPass() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_unlimitedPassKey) ?? false;
  }

  @override
  Future<void> setUnlimitedPass(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_unlimitedPassKey, value);
  }
}

/// Plan yönetimi için statik kolaylık cephesi (facade).
///
/// Uygulama kodu önceden olduğu gibi `PlanManager.getPlan()` şeklinde
/// çağırmaya devam eder; hiçbir çağrı noktası değişmedi. Ama artık gerçek
/// iş [instance] alanına devredildiği için, testlerde
/// `PlanManager.instance = SahtePlanManager();` yazıp SharedPreferences'a
/// hiç dokunmadan sahte bir implementasyon enjekte edilebilir.
class PlanManager {
  PlanManager._();

  static PlanManagerBase instance = SharedPreferencesPlanManager();

  /// Mevcut planı döndürür
  static Future<PlanType> getPlan() => instance.getPlan();

  /// Planı ayarlar
  static Future<void> setPlan(PlanType plan) => instance.setPlan(plan);

  /// Sınırsız pas hakkının durumunu döndürür
  static Future<bool> getUnlimitedPass() => instance.getUnlimitedPass();

  /// Sınırsız pas hakkını ayarlar
  static Future<void> setUnlimitedPass(bool value) => instance.setUnlimitedPass(value);
}

/// [PlanCategories] için test edilebilirlik sağlayan arayüz.
abstract class PlanCategoriesBase {
  Future<Set<PremiumKategori>> getSelectedPremiumCategories();
  Future<void> setSelectedPremiumCategories(Set<PremiumKategori> categories);
  Future<FreeKategori> getSelectedFreeCategory();
  Future<void> setSelectedFreeCategory(FreeKategori kategori);
  Future<bool> getUseFreeSelection();
  Future<void> setUseFreeSelection(bool value);
}

/// Gerçek SharedPreferences tabanlı kategori tercihi implementasyonu.
class SharedPreferencesPlanCategories implements PlanCategoriesBase {
  static const String _premiumCategoriesKey = 'premium_selected_categories';
  static const String _freeCategoryKey = 'free_selected_category';
  static const String _useFreeSelectionKey = 'use_free_selection';

  static const Map<PremiumKategori, String> _premiumKategoriKeyleri = {
    PremiumKategori.markalar: 'markalar',
    PremiumKategori.cocuklar: 'cocuklar',
    PremiumKategori.bilim_teknoloji: 'bilim_teknoloji',
    PremiumKategori.tarih_kultur: 'tarih_kultur',
    PremiumKategori.spor: 'spor',
    PremiumKategori.film_diziler: 'film_diziler',
    PremiumKategori.yemek_mutfak: 'yemek_mutfak',
    PremiumKategori.ulkeler_kultur: 'ulkeler_kultur',
  };

  @override
  Future<Set<PremiumKategori>> getSelectedPremiumCategories() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> keys = prefs.getStringList(_premiumCategoriesKey) ?? const [];
    final Set<PremiumKategori> result = {};
    for (final String k in keys) {
      for (final entry in _premiumKategoriKeyleri.entries) {
        if (entry.value == k) {
          result.add(entry.key);
          break;
        }
      }
    }
    return result;
  }

  @override
  Future<void> setSelectedPremiumCategories(Set<PremiumKategori> categories) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> keys = categories.map((e) => _premiumKategoriKeyleri[e]!).toList();
    await prefs.setStringList(_premiumCategoriesKey, keys);
  }

  @override
  Future<FreeKategori> getSelectedFreeCategory() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? key = prefs.getString(_freeCategoryKey);
    if (key == 'cocuklar') return FreeKategori.cocuklar;
    return FreeKategori.freeHavuz;
  }

  @override
  Future<void> setSelectedFreeCategory(FreeKategori kategori) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String key = kategori == FreeKategori.cocuklar ? 'cocuklar' : 'freeHavuz';
    await prefs.setString(_freeCategoryKey, key);
  }

  @override
  Future<bool> getUseFreeSelection() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_useFreeSelectionKey) ?? false;
  }

  @override
  Future<void> setUseFreeSelection(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_useFreeSelectionKey, value);
  }
}

/// Kategori tercihleri için statik kolaylık cephesi (facade).
/// Bkz. [PlanManager] üzerindeki açıklama — aynı test-edilebilirlik deseni.
class PlanCategories {
  PlanCategories._();

  static PlanCategoriesBase instance = SharedPreferencesPlanCategories();

  static Future<Set<PremiumKategori>> getSelectedPremiumCategories() =>
      instance.getSelectedPremiumCategories();

  static Future<void> setSelectedPremiumCategories(Set<PremiumKategori> categories) =>
      instance.setSelectedPremiumCategories(categories);

  static Future<FreeKategori> getSelectedFreeCategory() => instance.getSelectedFreeCategory();

  static Future<void> setSelectedFreeCategory(FreeKategori kategori) =>
      instance.setSelectedFreeCategory(kategori);

  static Future<bool> getUseFreeSelection() => instance.getUseFreeSelection();

  static Future<void> setUseFreeSelection(bool value) => instance.setUseFreeSelection(value);
}
