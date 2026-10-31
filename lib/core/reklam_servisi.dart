import 'dart:async';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'plan_manager.dart';

/// [ReklamServisi]'nin uyması gereken arayüz. Testlerde gerçek AdMob SDK'sını
/// hiç yüklemeden sahte bir implementasyon enjekte edebilmek için var.
abstract class ReklamServisiBase {
  Future<void> initialize();
  Future<BannerAd?> createBannerAd();
  Future<InterstitialAd?> createTamSayfaReklam();
  Future<RewardedAd?> createOdulluReklam();
  Future<bool> pasHakkiReklamKullanildiMi();
  Future<void> pasHakkiReklamKullanildi();
  Future<void> pasHakkiReklamSifirla();
  Future<void> tamSayfaReklamGosterVeDevamEt(Future<void> Function() devamEt);
  Future<bool> pasIcinOdulluReklamGoster();
}

/// Gerçek AdMob tabanlı reklam servisi implementasyonu.
class AdMobReklamServisi implements ReklamServisiBase {
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

  String get bannerReklamId => _isDebugMode ? _testBannerReklamId : _bannerReklamId;
  String get tamSayfaReklamId => _isDebugMode ? _testTamSayfaReklamId : _tamSayfaReklamId;
  String get odulluReklamId => _isDebugMode ? _testOdulluReklamId : _odulluReklamId;

  static const String _pasHakkiKullanildiKey = 'pas_hakki_reklam_kullanildi';

  bool _initialized = false;

  @override
  Future<void> initialize() async {
    if (_initialized) return;

    // PRODUCTION: Gerçek reklamlar için test cihazları listesi boş
    await MobileAds.instance.initialize();
    // PRODUCTION: Test cihazları tanımlanmamış - gerçek reklamlar gösterilecek
    MobileAds.instance.updateRequestConfiguration(
      RequestConfiguration(testDeviceIds: []),
    );
    _initialized = true;
  }

  @override
  Future<BannerAd?> createBannerAd() async {
    final plan = await PlanManager.getPlan();
    if (plan == PlanType.premium) {
      return null; // Premium kullanıcılar için reklam yok
    }

    return BannerAd(
      adUnitId: bannerReklamId,
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
    );
  }

  @override
  Future<InterstitialAd?> createTamSayfaReklam() async {
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
          },
          onAdFailedToLoad: (error) {},
        ),
      );
      return interstitialAd;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<RewardedAd?> createOdulluReklam() async {
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
          },
          onAdFailedToLoad: (error) {},
        ),
      );
      return rewardedAd;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> pasHakkiReklamKullanildiMi() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_pasHakkiKullanildiKey) ?? false;
  }

  @override
  Future<void> pasHakkiReklamKullanildi() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_pasHakkiKullanildiKey, true);
  }

  @override
  Future<void> pasHakkiReklamSifirla() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_pasHakkiKullanildiKey, false);
  }

  @override
  Future<void> tamSayfaReklamGosterVeDevamEt(Future<void> Function() devamEt) async {
    final plan = await PlanManager.getPlan();
    if (plan == PlanType.premium) {
      await devamEt();
      return;
    }

    final InterstitialAd? ad = await createTamSayfaReklam();
    if (ad == null) {
      await devamEt();
      return;
    }

    final Completer<void> tamamlandi = Completer<void>();
    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (a) {
        a.dispose();
        if (!tamamlandi.isCompleted) tamamlandi.complete();
      },
      onAdFailedToShowFullScreenContent: (a, error) {
        a.dispose();
        if (!tamamlandi.isCompleted) tamamlandi.complete();
      },
    );
    await ad.show();
    await tamamlandi.future;
    await devamEt();
  }

  @override
  Future<bool> pasIcinOdulluReklamGoster() async {
    final plan = await PlanManager.getPlan();
    if (plan == PlanType.premium) return false;

    final bool kullanildi = await pasHakkiReklamKullanildiMi();
    if (kullanildi) return false;

    final RewardedAd? rewardedAd = await createOdulluReklam();
    if (rewardedAd == null) return false;

    bool odulKazanildi = false;
    final Completer<void> tamamlandi = Completer<void>();

    rewardedAd.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        ad.dispose();
        if (!tamamlandi.isCompleted) tamamlandi.complete();
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        ad.dispose();
        if (!tamamlandi.isCompleted) tamamlandi.complete();
      },
    );

    await rewardedAd.show(
      onUserEarnedReward: (ad, reward) {
        odulKazanildi = true;
        pasHakkiReklamKullanildi();
      },
    );

    await tamamlandi.future;
    return odulKazanildi;
  }
}

/// Reklam işlemleri için statik kolaylık cephesi (facade).
///
/// Çağrı noktaları önceden olduğu gibi `ReklamServisi.createBannerAd()` gibi
/// statik metotları kullanmaya devam eder. Testlerde gerçek AdMob SDK'sını
/// yüklemeden `ReklamServisi.instance = SahteReklamServisi();` ile tüm
/// davranış değiştirilebilir.
class ReklamServisi {
  ReklamServisi._();

  static ReklamServisiBase instance = AdMobReklamServisi();

  static Future<void> initialize() => instance.initialize();
  static Future<BannerAd?> createBannerAd() => instance.createBannerAd();
  static Future<InterstitialAd?> createTamSayfaReklam() => instance.createTamSayfaReklam();
  static Future<RewardedAd?> createOdulluReklam() => instance.createOdulluReklam();
  static Future<bool> pasHakkiReklamKullanildiMi() => instance.pasHakkiReklamKullanildiMi();
  static Future<void> pasHakkiReklamKullanildi() => instance.pasHakkiReklamKullanildi();
  static Future<void> pasHakkiReklamSifirla() => instance.pasHakkiReklamSifirla();

  static Future<void> tamSayfaReklamGosterVeDevamEt(Future<void> Function() devamEt) =>
      instance.tamSayfaReklamGosterVeDevamEt(devamEt);

  static Future<bool> pasIcinOdulluReklamGoster() => instance.pasIcinOdulluReklamGoster();
}
