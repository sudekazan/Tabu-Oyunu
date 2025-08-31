# Reklam Sorunları Çözümü

## Sorunlar ve Çözümler

### 1. Ana Hata: `rewardedAdUserEarnedRewardCallback` Tanımlanmamış
**Hata:** `lib/screens/oyun_sayfasi.dart:344:18: Error: The setter 'rewardedAdUserEarnedRewardCallback' isn't defined for the class 'RewardedAd'.`

**Çözüm:** Google Mobile Ads SDK 4.0.0'da bu setter kaldırılmış. Bunun yerine `RewardedAd.show()` metodunda `onUserEarnedReward` parametresi kullanılıyor.

**Kod Değişikliği:**
```dart
// Eski kod (hata veriyordu):
rewardedAd.rewardedAdUserEarnedRewardCallback = (ad, reward) { ... };

// Yeni kod (çalışıyor):
await rewardedAd.show(
  onUserEarnedReward: (ad, reward) { ... },
);
```

### 2. Reklamlar Çıkmıyor - "No ad to show" Hatası
**Sorun:** Konsolda "Request Error: No ad to show" hatası alınıyor.

**Çözümler:**

#### A. Test Cihazı Eklendi
```dart
// lib/core/reklam_servisi.dart
static Future<void> initialize() async {
  if (_initialized) return;
  
  // Test cihazı ekle (konsolda verilen ID)
  MobileAds.instance.updateRequestConfiguration(
    RequestConfiguration(
      testDeviceIds: ['afcd210fcaab8f288c77da2fa82d1fe6'],
    ),
  );
  
  await MobileAds.instance.initialize();
  _initialized = true;
}
```

#### B. Test Reklam ID'leri Eklendi
```dart
// Test reklam ID'leri (debug modunda kullanılır)
static const String _testBannerReklamId = 'ca-app-pub-3940256099942544/6300978111';
static const String _testTamSayfaReklamId = 'ca-app-pub-3940256099942544/1033173712';
static const String _testOdulluReklamId = 'ca-app-pub-3940256099942544/5224354917';

// Debug modunda test reklamları kullan
static bool get _isDebugMode => true; // Şimdilik true, production'da false yapılacak
```

#### C. iOS SKAdNetwork ID'leri Eklendi
`ios/Runner/Info.plist` dosyasına Google'ın önerdiği tüm SKAdNetwork ID'leri eklendi.

### 3. Konsol Mesajları Açıklaması

#### Test Cihazı Mesajı
```
<Google> To get test ads on this device, set: 
Objective-C
	GADMobileAds.sharedInstance.requestConfiguration.testDeviceIdentifiers = @[ @"afcd210fcaab8f288c77da2fa82d1fe6" ];
```
**Çözüldü:** Bu ID test cihazları listesine eklendi.

#### SKAdNetwork Uyarısı
```
<Google> <Google:HTML> 48 required SKAdNetwork identifier(s) missing from Info.plist
```
**Çözüldü:** Gerekli SKAdNetwork ID'leri Info.plist'e eklendi.

#### Reklam Yüklenememe Hatası
```
flutter: Banner reklam yüklenemedi: LoadAdError(code: 1, domain: com.google.admob, message: Request Error: No ad to show.)
```
**Çözüldü:** Test reklam ID'leri kullanılarak test reklamları gösteriliyor.

## Kullanım

### Debug Modunda Test Reklamları
Şu anda `_isDebugMode = true` olarak ayarlandı. Bu sayede:
- Test reklamları gösteriliyor
- Gerçek reklamlar yüklenmiyor
- Konsol hataları azalıyor

### Production'a Geçiş
Production'a geçmek için:
1. `lib/core/reklam_servisi.dart` dosyasında `_isDebugMode = false` yapın
2. Gerçek AdMob ID'leri kullanılacak
3. Test cihazı listesini temizleyin

## Test Etme

1. Uygulamayı çalıştırın
2. Konsol mesajlarını kontrol edin
3. Test reklamları görünmelidir
4. "Banner reklam yüklendi: [test-id]" mesajları konsolda görünmelidir

## Notlar

- Test reklamları her zaman yüklenir
- Gerçek reklamlar için AdMob hesabında reklam birimleri aktif olmalı
- iOS için SKAdNetwork ID'leri App Store onayı için gerekli
- Test cihazı ID'si cihaza özeldir, farklı cihazlarda farklı olabilir
