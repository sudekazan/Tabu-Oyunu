import 'dart:async';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'plan_manager.dart';

class PremiumSatinAlmaServisi {
  static const String _premiumProductId = 'tabu_premium_lifetime';
  
  static final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  static StreamSubscription<List<PurchaseDetails>>? _subscription;
  
  static bool _isAvailable = false;
  static List<ProductDetails> _products = [];
  
  // Premium ürün bilgileri
  static ProductDetails? get premiumLifetime {
    try {
      return _products.firstWhere((product) => product.id == _premiumProductId);
    } catch (e) {
      return null;
    }
  }
  

  
  static bool get isAvailable => _isAvailable;
  
  // Servisi başlat
  static Future<void> initialize() async {
    try {
      _isAvailable = await _inAppPurchase.isAvailable();
      
      if (_isAvailable) {
        // Ürünleri yükle
        await _loadProducts();
        
        // Satın alma dinleyicisini başlat
        _subscription = _inAppPurchase.purchaseStream.listen(
          _onPurchaseUpdate,
          onDone: () => _subscription?.cancel(),
          onError: (error) {}, // Satın alma hatası
        );
      }
    } catch (e) {
      // Premium servis başlatma hatası
    }
  }
  
  // Ürünleri yükle
  static Future<void> _loadProducts() async {
    try {
      final Set<String> productIds = {
        _premiumProductId,
      };
      
      final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(productIds);
      
      if (response.notFoundIDs.isNotEmpty) {
        // Bulunamayan ürünler
      }
      
      _products = response.productDetails;
      // Yüklenen ürünler
    } catch (e) {
      // Ürün yükleme hatası
    }
  }
  
  // Satın alma işlemi
  static Future<bool> purchasePremium(ProductDetails product) async {
    try {
      if (!_isAvailable) {
        // In-App Purchase servisi kullanılamıyor
        return false;
      }
      
      final PurchaseParam purchaseParam = PurchaseParam(productDetails: product);
      
      final bool result = await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
      
      return result;
    } catch (e) {
      // Satın alma hatası
      return false;
    }
  }
  
  // Satın alma güncellemelerini dinle
  static void _onPurchaseUpdate(List<PurchaseDetails> purchaseDetailsList) {
    for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        // Beklemede
        // Satın alma bekleniyor
      } else if (purchaseDetails.status == PurchaseStatus.purchased ||
                 purchaseDetails.status == PurchaseStatus.restored) {
        // Başarılı satın alma
        _handleSuccessfulPurchase(purchaseDetails);
      } else if (purchaseDetails.status == PurchaseStatus.error) {
        // Hata
        // Satın alma hatası
      }
      
      if (purchaseDetails.pendingCompletePurchase) {
        _inAppPurchase.completePurchase(purchaseDetails);
      }
    }
  }
  
  // Başarılı satın alma işlemi
  static void _handleSuccessfulPurchase(PurchaseDetails purchaseDetails) async {
    // Premium satın alındı
    
    // Premium planı aktifleştir
    await PlanManager.setPlan(PlanType.premium);
    
    // Sınırsız pas hakkını aktifleştir
    await PlanManager.setUnlimitedPass(true);
  }
  
  // Satın almaları geri yükle (App Store için)
  static Future<void> restorePurchases() async {
    try {
      await _inAppPurchase.restorePurchases();
    } catch (e) {
      // Geri yükleme hatası
    }
  }
  
  // Servisi kapat
  static void dispose() {
    _subscription?.cancel();
  }
  
  // Premium durumunu kontrol et
  static Future<bool> checkPremiumStatus() async {
    try {
      // Şimdilik sadece mevcut plan durumunu kontrol et
      // Gerçek uygulamada bu kısım Google Play/App Store API'leri ile entegre edilecek
      final PlanType currentPlan = await PlanManager.getPlan();
      return currentPlan == PlanType.premium;
    } catch (e) {
      // Premium durum kontrolü hatası
      return false;
    }
  }
}
