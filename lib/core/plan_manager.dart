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

/// Plan yönetimi sınıfı
class PlanManager {
  static const String _planKey = 'plan_type';
  static const String _unlimitedPassKey = 'premium_unlimited_pass';

  /// Mevcut planı döndürür
  static Future<PlanType> getPlan() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? val = prefs.getString(_planKey);
    if (val == 'premium') return PlanType.premium;
    return PlanType.free;
  }

  /// Planı ayarlar
  static Future<void> setPlan(PlanType plan) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_planKey, plan == PlanType.premium ? 'premium' : 'free');
  }

  /// Sınırsız pas hakkının durumunu döndürür
  static Future<bool> getUnlimitedPass() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_unlimitedPassKey) ?? false;
  }

  /// Sınırsız pas hakkını ayarlar
  static Future<void> setUnlimitedPass(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_unlimitedPassKey, value);
  }
}

/// Kategori yönetimi sınıfı
class PlanCategories {
  static const String _premiumCategoriesKey = 'premium_selected_categories';
  static const String _freeCategoryKey = 'free_selected_category';
  static const String _useFreeSelectionKey = 'use_free_selection';

  /// Seçili premium kategorileri döndürür
  static Future<Set<PremiumKategori>> getSelectedPremiumCategories() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> keys = prefs.getStringList(_premiumCategoriesKey) ?? const [];
    final Set<PremiumKategori> result = {};
    for (final String k in keys) {
      // PremiumKategori enum değerlerini string'den çevir
      PremiumKategori? pk;
      switch (k) {
        case 'markalar':
          pk = PremiumKategori.markalar;
          break;
        case 'cocuklar':
          pk = PremiumKategori.cocuklar;
          break;
        case 'bilim_teknoloji':
          pk = PremiumKategori.bilim_teknoloji;
          break;
        case 'tarih_kultur':
          pk = PremiumKategori.tarih_kultur;
          break;
        case 'spor':
          pk = PremiumKategori.spor;
          break;
        case 'film_diziler':
          pk = PremiumKategori.film_diziler;
          break;
        case 'yemek_mutfak':
          pk = PremiumKategori.yemek_mutfak;
          break;
        case 'ulkeler_kultur':
          pk = PremiumKategori.ulkeler_kultur;
          break;
      }
      if (pk != null) result.add(pk);
    }
    return result;
  }

  /// Premium kategorileri ayarlar
  static Future<void> setSelectedPremiumCategories(Set<PremiumKategori> categories) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> keys = categories.map((e) {
      switch (e) {
        case PremiumKategori.markalar:
          return 'markalar';
        case PremiumKategori.cocuklar:
          return 'cocuklar';
        case PremiumKategori.bilim_teknoloji:
          return 'bilim_teknoloji';
        case PremiumKategori.tarih_kultur:
          return 'tarih_kultur';
        case PremiumKategori.spor:
          return 'spor';
        case PremiumKategori.film_diziler:
          return 'film_diziler';
        case PremiumKategori.yemek_mutfak:
          return 'yemek_mutfak';
        case PremiumKategori.ulkeler_kultur:
          return 'ulkeler_kultur';
      }
    }).toList();
    await prefs.setStringList(_premiumCategoriesKey, keys);
  }

  /// Seçili free kategoriyi döndürür
  static Future<FreeKategori> getSelectedFreeCategory() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? key = prefs.getString(_freeCategoryKey);
    if (key == 'cocuklar') return FreeKategori.cocuklar;
    return FreeKategori.freeHavuz;
  }

  /// Free kategoriyi ayarlar
  static Future<void> setSelectedFreeCategory(FreeKategori kategori) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String key = kategori == FreeKategori.cocuklar ? 'cocuklar' : 'freeHavuz';
    await prefs.setString(_freeCategoryKey, key);
  }

  /// Free seçim kullanım durumunu döndürür
  static Future<bool> getUseFreeSelection() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_useFreeSelectionKey) ?? false;
  }

  /// Free seçim kullanım durumunu ayarlar
  static Future<void> setUseFreeSelection(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_useFreeSelectionKey, value);
  }
}



