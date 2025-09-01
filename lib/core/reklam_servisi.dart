import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'plan_manager.dart';

class ReklamServisi {
  // ===== PRODUCTION MODU AKTİF =====
  // Test reklam ID'leri (yalnızca geliştirme aşamasında kullanılır)
  static const String _testBannerReklamId = 'ca-app-pub-3940256099942544/6300978111';
  static const String _testTamSayfaReklamId = 'ca-app-pub-3940256099942544/1033173712';
  static const String _testOdulluReklamId = 'ca-app-pub-3940256099942544/5224354917';

  // Gerçek AdMob ID'leri (PRODUCTION - Yayınlanmış reklam birimleri)
  static const String _bannerReklamId = 'ca-app-pub-2127302088980655/9402912295'; // Tabu Banner
  static const String _tamSayfaReklamId = 'ca-app-pub-2127302088980655/6385581301'; // Tabu Interstitial
  static const String _odulluReklamId = 'ca-app-pub-2127302088980655/9298970512'; // Tabu Rewarded
  
  // PRODUCTION MODU AKTİF - Gerçek reklamlar kullanılacak
  static bool get _isDebugMode => false;
  
  static String get bannerReklamId => _isDebugMode ? _testBannerReklamId : _bannerReklamId;
  static String get tamSayfaReklamId => _isDebugMode ? _testTamSayfaReklamId : _tamSayfaReklamId;
  static String get odulluReklamId => _isDebugMode ? _testOdulluReklamId : _odulluReklamId;
  
  static const String _pasHakkiKullanildiKey = 'pas_hakki_reklam_kullanildi';
  
  static bool _initialized = false;
  
  // AdMob'u başlat (PRODUCTION MODU)
  static Future<void> initialize() async {
    if (_initialized) return;

    // PRODUCTION: Gerçek reklamlar için test cihazları listesi boş
    await MobileAds.instance.initialize();
    // PRODUCTION: Test cihazları tanımlanmamış - gerçek reklamlar gösterilecek
    MobileAds.instance.updateRequestConfiguration(
      RequestConfiguration(testDeviceIds: []),
    );
    _initialized = true;
  }
  
  // Banner reklam oluştur (PRODUCTION: ca-app-pub-2127302088980655/9402912295)
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
          // Banner reklam başarıyla yüklendi (PRODUCTION)
        },
        onAdFailedToLoad: (ad, error) {
          // Banner reklam yüklenemedi (PRODUCTION)
          ad.dispose();
        },
      ),
    );
  }
  
  // Tam sayfa reklam oluştur (PRODUCTION: ca-app-pub-2127302088980655/6385581301)
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
            // Tam sayfa reklam başarıyla yüklendi (PRODUCTION)
          },
          onAdFailedToLoad: (error) {
            // Tam sayfa reklam yüklenemedi (PRODUCTION)
          },
        ),
      );
      return interstitialAd;
    } catch (e) {
      // Tam sayfa reklam oluşturulamadı (PRODUCTION)
      return null;
    }
  }
  
  // Ödüllü reklam oluştur (PRODUCTION: ca-app-pub-2127302088980655/9298970512)
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
            // Ödüllü reklam başarıyla yüklendi (PRODUCTION)
          },
          onAdFailedToLoad: (error) {
            // Ödüllü reklam yüklenemedi (PRODUCTION)
          },
        ),
      );
      return rewardedAd;
    } catch (e) {
      // Ödüllü reklam oluşturulamadı (PRODUCTION)
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
