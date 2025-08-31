import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'plan_manager.dart';

class ReklamServisi {
  // Test reklam ID'leri (debug modunda kullanılır)
  static const String _testBannerReklamId = 'ca-app-pub-3940256099942544/6300978111';
  static const String _testTamSayfaReklamId = 'ca-app-pub-3940256099942544/1033173712';
  static const String _testOdulluReklamId = 'ca-app-pub-3940256099942544/5224354917';
  
  // Gerçek AdMob ID'leri (production'da kullanılır)
  static const String _bannerReklamId = 'ca-app-pub-2127302088980655/9402912295'; // Tabu Banner
  static const String _tamSayfaReklamId = 'ca-app-pub-2127302088980655/6385581301'; // Tabu Interstitial
  static const String _odulluReklamId = 'ca-app-pub-2127302088980655/9298970512'; // Tabu Rewarded
  
  // Debug modunda test reklamları kullan
  static bool get _isDebugMode => false; // Gerçek reklamları aktifleştir
  
  static String get bannerReklamId => _isDebugMode ? _testBannerReklamId : _bannerReklamId;
  static String get tamSayfaReklamId => _isDebugMode ? _testTamSayfaReklamId : _tamSayfaReklamId;
  static String get odulluReklamId => _isDebugMode ? _testOdulluReklamId : _odulluReklamId;
  
  static const String _pasHakkiKullanildiKey = 'pas_hakki_reklam_kullanildi';
  
  static bool _initialized = false;
  
  // AdMob'u başlat
  static Future<void> initialize() async {
    if (_initialized) return;
    
    // Gerçek reklamlar için test cihazı eklemeye gerek yok
    await MobileAds.instance.initialize();
    _initialized = true;
  }
  
  // Banner reklam oluştur
  static Future<BannerAd?> createBannerAd() async {
    // Premium kullanıcılar için reklam gösterme
    final plan = await PlanManager.getPlan();
    if (plan == PlanType.premium) {
      return null; // Premium kullanıcılar için reklam yok
    }
    
    return BannerAd(
      adUnitId: bannerReklamId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          // Banner reklam başarıyla yüklendi
        },
        onAdFailedToLoad: (ad, error) {
          // Banner reklam yüklenemedi
          ad.dispose();
        },
      ),
    );
  }
  
  // Tam sayfa reklam oluştur
  static Future<InterstitialAd?> createTamSayfaReklam() async {
    // Premium kullanıcılar için reklam gösterme
    final plan = await PlanManager.getPlan();
    if (plan == PlanType.premium) {
      return null; // Premium kullanıcılar için reklam yok
    }
    
    try {
      InterstitialAd? interstitialAd;
      await InterstitialAd.load(
        adUnitId: tamSayfaReklamId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (ad) {
            interstitialAd = ad;
            // Tam sayfa reklam başarıyla yüklendi
          },
          onAdFailedToLoad: (error) {
            // Tam sayfa reklam yüklenemedi
          },
        ),
      );
      return interstitialAd;
    } catch (e) {
      // Tam sayfa reklam oluşturulamadı
      return null;
    }
  }
  
  // Ödüllü reklam oluştur
  static Future<RewardedAd?> createOdulluReklam() async {
    // Premium kullanıcılar için reklam gösterme
    final plan = await PlanManager.getPlan();
    if (plan == PlanType.premium) {
      return null; // Premium kullanıcılar için reklam yok
    }
    
    try {
      RewardedAd? rewardedAd;
      await RewardedAd.load(
        adUnitId: odulluReklamId,
        request: const AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (ad) {
            rewardedAd = ad;
            // Ödüllü reklam başarıyla yüklendi
        },
          onAdFailedToLoad: (error) {
            // Ödüllü reklam yüklenemedi
          },
        ),
      );
      return rewardedAd;
    } catch (e) {
      // Ödüllü reklam oluşturulamadı
      return null;
    }
  }
  
  // Pas hakkı reklamı kullanıldı mı kontrol et
  static Future<bool> pasHakkiReklamKullanildiMi() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_pasHakkiKullanildiKey) ?? false;
  }
  
  // Pas hakkı reklamı kullanıldı olarak işaretle
  static Future<void> pasHakkiReklamKullanildi() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_pasHakkiKullanildiKey, true);
  }
  
  // Pas hakkı reklamı sıfırla (yeni oyun için)
  static Future<void> pasHakkiReklamSifirla() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_pasHakkiKullanildiKey, false);
  }
}
