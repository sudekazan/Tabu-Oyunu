import 'dart:async';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'plan_manager.dart';

/// [PremiumSatinAlmaServisi]'nin uyması gereken arayüz. Testlerde gerçek
/// mağaza SDK'sını yüklemeden sahte bir implementasyon enjekte edebilmek
/// için var.
abstract class PremiumSatinAlmaServisiBase {
  ProductDetails? get premiumLifetime;
  bool get isAvailable;

  Future<void> initialize();
  Future<bool> purchasePremium(ProductDetails product);
  Future<void> restorePurchases();
  Future<bool> checkPremiumStatus();
  void dispose();
}

/// Gerçek `in_app_purchase` tabanlı implementasyon.
class InAppPurchasePremiumServisi implements PremiumSatinAlmaServisiBase {
  static const String _premiumProductId = 'tabu_premium_lifetime';

  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;

  bool _isAvailable = false;
  List<ProductDetails> _products = [];

  @override
  ProductDetails? get premiumLifetime {
    try {
      return _products.firstWhere((product) => product.id == _premiumProductId);
    } catch (e) {
      return null;
    }
  }

  @override
  bool get isAvailable => _isAvailable;

  @override
  Future<void> initialize() async {
    try {
      _isAvailable = await _inAppPurchase.isAvailable();

      if (_isAvailable) {
        await _loadProducts();

        _subscription = _inAppPurchase.purchaseStream.listen(
          _onPurchaseUpdate,
          onDone: () => _subscription?.cancel(),
          onError: (error) {},
        );
      }
    } catch (e) {
      // Premium servis başlatma hatası
    }
  }

  Future<void> _loadProducts() async {
    try {
      final Set<String> productIds = {_premiumProductId};
      final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(productIds);
      _products = response.productDetails;
    } catch (e) {
      // Ürün yükleme hatası
    }
  }

  @override
  Future<bool> purchasePremium(ProductDetails product) async {
    try {
      if (!_isAvailable) return false;

      final PurchaseParam purchaseParam = PurchaseParam(productDetails: product);
      return await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
    } catch (e) {
      return false;
    }
  }

  void _onPurchaseUpdate(List<PurchaseDetails> purchaseDetailsList) {
    for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.purchased ||
          purchaseDetails.status == PurchaseStatus.restored) {
        _handleSuccessfulPurchase(purchaseDetails);
      }

      if (purchaseDetails.pendingCompletePurchase) {
        _inAppPurchase.completePurchase(purchaseDetails);
      }
    }
  }

  void _handleSuccessfulPurchase(PurchaseDetails purchaseDetails) async {
    await PlanManager.setPlan(PlanType.premium);
    await PlanManager.setUnlimitedPass(true);
  }

  @override
  Future<void> restorePurchases() async {
    try {
      await _inAppPurchase.restorePurchases();
    } catch (e) {
      // Geri yükleme hatası
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
  }

  @override
  Future<bool> checkPremiumStatus() async {
    try {
      // Şimdilik sadece mevcut plan durumunu kontrol et
      // Gerçek uygulamada bu kısım Google Play/App Store API'leri ile entegre edilecek
      final PlanType currentPlan = await PlanManager.getPlan();
      return currentPlan == PlanType.premium;
    } catch (e) {
      return false;
    }
  }
}

/// Premium satın alma işlemleri için statik kolaylık cephesi (facade).
///
/// Çağrı noktaları önceden olduğu gibi `PremiumSatinAlmaServisi.initialize()`
/// gibi statik metotları kullanmaya devam eder. Testlerde gerçek mağaza
/// SDK'sını yüklemeden `PremiumSatinAlmaServisi.instance = SahteServis();`
/// ile tüm davranış değiştirilebilir.
class PremiumSatinAlmaServisi {
  PremiumSatinAlmaServisi._();

  static PremiumSatinAlmaServisiBase instance = InAppPurchasePremiumServisi();

  static ProductDetails? get premiumLifetime => instance.premiumLifetime;
  static bool get isAvailable => instance.isAvailable;

  static Future<void> initialize() => instance.initialize();
  static Future<bool> purchasePremium(ProductDetails product) => instance.purchasePremium(product);
  static Future<void> restorePurchases() => instance.restorePurchases();
  static Future<bool> checkPremiumStatus() => instance.checkPremiumStatus();
  static void dispose() => instance.dispose();
}
