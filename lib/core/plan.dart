import 'package:shared_preferences/shared_preferences.dart';
import '../data/premium/kategoriler/index.dart';

enum PlanType { free, premium }
enum FreeKategori { freeHavuz, cocuklar }

class PlanManager {
  static const String _planKey = 'plan_type';
  static const String _unlimitedPassKey = 'premium_unlimited_pass';
  static const String _premiumCategoriesKey = 'premium_selected_categories';
  static const String _freeCategoryKey = 'free_selected_category';
  static const String _useFreeSelectionKey = 'use_free_selection';

  static Future<PlanType> getPlan() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? val = prefs.getString(_planKey);
    if (val == 'premium') return PlanType.premium;
    return PlanType.free;
  }

  static Future<void> setPlan(PlanType plan) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_planKey, plan == PlanType.premium ? 'premium' : 'free');
  }

  static Future<bool> getUnlimitedPass() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_unlimitedPassKey) ?? false;
  }

  static Future<void> setUnlimitedPass(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_unlimitedPassKey, value);
  }
}

extension PremiumKategoriPersistence on PremiumKategori {
  String get keyName => toString().split('.').last;
  static PremiumKategori? fromKey(String key) {
    for (final PremiumKategori k in PremiumKategori.values) {
      if (k.toString().split('.').last == key) return k;
    }
    return null;
  }
}

class PlanCategories {
  static Future<Set<PremiumKategori>> getSelectedPremiumCategories() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> keys = prefs.getStringList(PlanManager._premiumCategoriesKey) ?? const [];
    final Set<PremiumKategori> result = {};
    for (final String k in keys) {
      final PremiumKategori? pk = PremiumKategoriPersistence.fromKey(k);
      if (pk != null) result.add(pk);
    }
    return result;
  }

  static Future<void> setSelectedPremiumCategories(Set<PremiumKategori> categories) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String> keys = categories.map((e) => e.keyName).toList();
    await prefs.setStringList(PlanManager._premiumCategoriesKey, keys);
  }

  // Free kategori seçimi
  static Future<FreeKategori> getSelectedFreeCategory() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? key = prefs.getString(PlanManager._freeCategoryKey);
    if (key == 'cocuklar') return FreeKategori.cocuklar;
    return FreeKategori.freeHavuz;
  }

  static Future<void> setSelectedFreeCategory(FreeKategori kategori) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String key = kategori == FreeKategori.cocuklar ? 'cocuklar' : 'freeHavuz';
    await prefs.setString(PlanManager._freeCategoryKey, key);
  }

  // Kaynak tercihi: Free seçim mi kullanılacak?
  static Future<bool> getUseFreeSelection() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(PlanManager._useFreeSelectionKey) ?? false;
  }

  static Future<void> setUseFreeSelection(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(PlanManager._useFreeSelectionKey, value);
  }
}


