# AdMob Kurulum Rehberi

Bu rehber, Tabu oyunu uygulamanıza AdMob reklamlarını nasıl entegre edeceğinizi açıklar.

## 🚀 Kurulum Adımları

### 1. AdMob Hesabı Oluşturma ✅
1. [AdMob](https://admob.google.com/) sitesine gidin
2. Google hesabınızla giriş yapın
3. "Uygulama ekle" butonuna tıklayın
4. Uygulama türünü seçin (Android/iOS)
5. Uygulama adını ve paket adını girin

### 2. Reklam Birimleri Oluşturma ✅

#### Banner Reklam
1. AdMob panelinde "Reklam birimleri" > "Yeni reklam birimi"
2. Reklam türü: **Banner**
3. Reklam birimi adı: "Tabu Banner"
4. **Android ID**: `ca-app-pub-2127302088980655/9402912295` ✅
5. **iOS ID**: `ca-app-pub-2127302088980655/6326975209` ✅

#### Tam Sayfa Reklam
1. "Reklam birimleri" > "Yeni reklam birimi"
2. Reklam türü: **Geçiş (Interstitial)**
3. Reklam birimi adı: "Tabu Interstitial"
4. **Android ID**: `ca-app-pub-2127302088980655/6385581301` ✅
5. **iOS ID**: `ca-app-pub-2127302088980655/7104052011` ✅

#### Ödüllü Reklam
1. "Reklam birimleri" > "Yeni reklam birimi"
2. Reklam türü: **Ödüllü**
3. Reklam birimi adı: "Tabu Rewarded"
4. **Android ID**: `ca-app-pub-2127302088980655/9298970512` ✅
5. **iOS ID**: `ca-app-pub-2127302088980655/5264071324` ✅

### 3. Kod Güncellemeleri ✅

#### `lib/core/reklam_servisi.dart`
```dart
// Android için AdMob ID'leri
static const String _bannerReklamId = 'ca-app-pub-2127302088980655/9402912295'; // Tabu Banner
static const String _tamSayfaReklamId = 'ca-app-pub-2127302088980655/6385581301'; // Tabu Interstitial
static const String _odulluReklamId = 'ca-app-pub-2127302088980655/9298970512'; // Tabu Rewarded
```

#### `android/app/src/main/AndroidManifest.xml`
```xml
<!-- Android App ID'yi ekleyin -->
<meta-data
    android:name="com.google.android.gms.ads.APPLICATION_ID"
    android:value="ca-app-pub-2127302088980655~YOUR_ANDROID_APP_ID"/>
```

#### `ios/Runner/Info.plist`
```xml
<!-- iOS App ID'yi ekleyin -->
<key>GADApplicationIdentifier</key>
<string>ca-app-pub-2127302088980655~YOUR_IOS_APP_ID</string>
```

### 4. Test Cihazları Ekleme
1. AdMob panelinde "Test cihazları" bölümüne gidin
2. Test cihazınızın reklam ID'sini ekleyin
3. Bu sayede test sırasında gerçek reklamlar yerine test reklamları gösterilir

## 📱 Reklam Türleri

### 1. Banner Reklam (Giriş Sayfası) ✅
- Giriş ekranının üst kısmında gösterilir
- Kullanıcı deneyimini bozmaz
- Sürekli görünür

### 2. Tam Sayfa Reklam (Oyun Başlangıcı) ✅
- Ayarlar tamamlandıktan sonra oyun başlamadan önce gösterilir
- Kullanıcı reklamı kapattıktan sonra oyun başlar
- Her oyun başlangıcında gösterilir

### 3. Ödüllü Reklam (Pas Hakkı) ✅
- Oyuncunun pas hakkı bittiğinde gösterilir
- Reklam izlendiğinde 1 ekstra pas hakkı verilir
- Her oyunda sadece bir kez kullanılabilir

## ⚠️ Son Adımlar

### Android App ID Ekleme
1. AdMob panelinde Android uygulamanızı seçin
2. "Uygulama ayarları" > "Uygulama ID" kopyalayın
3. `android/app/src/main/AndroidManifest.xml` dosyasında `YOUR_ANDROID_APP_ID` yerine yapıştırın

### iOS App ID Ekleme
1. AdMob panelinde iOS uygulamanızı seçin
2. "Uygulama ayarları" > "Uygulama ID" kopyalayın
3. `ios/Runner/Info.plist` dosyasında `YOUR_IOS_APP_ID` yerine yapıştırın

## 🔧 Sorun Giderme

### Reklam Yüklenmiyor
- İnternet bağlantısını kontrol edin
- AdMob ID'lerinin doğru olduğundan emin olun
- Test cihazı eklenmiş mi kontrol edin

### Uygulama Çöküyor
- Flutter ve AdMob paketlerini güncelleyin
- Android/iOS sürüm uyumluluğunu kontrol edin

## 📞 Destek

Sorun yaşarsanız:
1. AdMob [yardım merkezi](https://support.google.com/admob)
2. Flutter [dokümantasyon](https://docs.flutter.dev/)
3. Google Mobile Ads [rehber](https://developers.google.com/admob/flutter/quickstart)

---

**Durum**: ✅ Reklam birimleri oluşturuldu, kod güncellendi
**Sonraki adım**: Android ve iOS App ID'lerini ekleyin
**Publisher ID**: `ca-app-pub-2127302088980655`
