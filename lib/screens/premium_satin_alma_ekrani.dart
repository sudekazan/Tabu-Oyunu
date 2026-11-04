import 'package:flutter/material.dart';
import '../core/app_theme.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import '../core/premium_satin_alma_servisi.dart';
import '../core/plan_manager.dart';

class PremiumSatinAlmaEkrani extends StatefulWidget {
  const PremiumSatinAlmaEkrani({super.key});

  @override
  State<PremiumSatinAlmaEkrani> createState() => _PremiumSatinAlmaEkraniState();
}

class _PremiumSatinAlmaEkraniState extends State<PremiumSatinAlmaEkrani> {
  bool _isLoading = false;
  bool _isPurchasing = false;

  @override
  void initState() {
    super.initState();
    _initializePremiumService();
  }

  Future<void> _initializePremiumService() async {
    setState(() => _isLoading = true);
    
    try {
      // Premium servisini başlat
      await PremiumSatinAlmaServisi.initialize();
      
      // Premium durumunu kontrol et
      await _checkPremiumStatus();
    } catch (e) {
      debugPrint('Premium servis başlatma hatası: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Premium servis başlatılamadı: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _checkPremiumStatus() async {
    try {
      final bool isPremium = await PremiumSatinAlmaServisi.checkPremiumStatus();
      if (isPremium) {
        // Premium zaten aktif, geri dön
        if (mounted) {
          Navigator.of(context).pop(true);
        }
      }
    } catch (e) {
      debugPrint('Premium durum kontrolü hatası: $e');
    }
  }

  Future<void> _purchasePremium(ProductDetails product) async {
    setState(() => _isPurchasing = true);
    
    try {
      final bool success = await PremiumSatinAlmaServisi.purchasePremium(product);
      
      if (success && mounted) {
        // Satın alma başarılı, geri dön
        Navigator.of(context).pop(true);
      } else if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Satın alma işlemi başarısız oldu. Lütfen tekrar deneyin.')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Hata: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isPurchasing = false);
      }
    }
  }

  Future<void> _restorePurchases() async {
    setState(() => _isLoading = true);
    
    try {
      await PremiumSatinAlmaServisi.restorePurchases();
      
      // Premium durumunu tekrar kontrol et
      final bool isPremium = await PremiumSatinAlmaServisi.checkPremiumStatus();
      if (isPremium && mounted) {
        Navigator.of(context).pop(true);
      } else if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Geri yüklenen satın alma bulunamadı.')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Geri yüklenme hatası: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  // Test modu uyarısı göster
  Future<void> _showTestModeWarning() async {
    if (mounted) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('⚠️ Test Modu'),
          content: const Text(
            'Şu anda test modundasınız. Gerçek satın alma için:\n\n'
            '1. Google Play Console\'da uygulama yayınlayın\n'
            '2. In-App Purchase ürününü oluşturun\n'
            '3. Yayınlandıktan sonra gerçek satın alma aktif olur\n\n'
            'Şimdilik test için premiumu aktifleştirelim mi?'
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('İPTAL'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _activatePremiumForTesting();
              },
              child: const Text('TEST ET'),
            ),
          ],
        ),
      );
    }
  }

  // Premium'u aktifleştir (sadece test için)
  Future<void> _activatePremiumForTesting() async {
    setState(() => _isPurchasing = true);

    try {
      // Gerçek satın alma deneyimi için kısa bekleme
      await Future.delayed(const Duration(seconds: 2));

      await PlanManager.setPlan(PlanType.premium);
      await PlanManager.setUnlimitedPass(true);

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('🎉 Premium başarıyla aktifleştirildi (Test)!'),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 2),
          ),
        );
      }

      // Kısa bir gecikme sonrası geri dön (bu arada widget unmount olmuş
      // olabileceği için context'i kullanmadan önce mounted'ı tekrar kontrol ediyoruz)
      await Future.delayed(const Duration(milliseconds: 500));
      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Satın alma hatası: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isPurchasing = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppTheme.backgroundDecoration,
        child: Column(
          children: [
            AppBar(
              title: Text('Premium\'a Geç', style: AppTheme.heading(fontSize: 20)),
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: const IconThemeData(color: Colors.white),
              centerTitle: true,
            ),
            Expanded(
              child: _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : SingleChildScrollView(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Premium başlık
                          Center(
                            child: Column(
                              children: [
                                Text('TABU PREMIUM', style: AppTheme.heading(fontSize: 32, fontWeight: FontWeight.w700)),
                                const SizedBox(height: 8),
                                Text(
                                  'Sınırsız oyun deneyimi',
                                  style: AppTheme.body(fontSize: 16, color: Colors.white.withValues(alpha: 0.9)),
                                ),
                              ],
                            ),
                          ),
                          
                          const SizedBox(height: 20),
                          
                          // Premium özellikleri
                          _buildFeatureItem(Icons.category, 'Premium Kategoriler', 'Markalar, Çocuklar ve daha fazlası'),
                          _buildFeatureItem(Icons.all_inclusive, 'Sınırsız Pas', 'Oyun sırasında sınırsız pas hakkı'),
                          _buildFeatureItem(Icons.extension, 'Geniş Kelime Havuzu', '2000+ premium kelime'),
                          _buildFeatureItem(Icons.block, 'Reklamsız Deneyim', 'Kesintisiz oyun keyfi'),
                          _buildFeatureItem(Icons.verified, 'Ömür Boyu Erişim', 'Tek seferlik ödeme, süresiz kullanım'),
                          
                          const SizedBox(height: 20),
                          
                          // Satın alma seçenekleri
                          _buildPurchaseOption(
                            PremiumSatinAlmaServisi.premiumLifetime,
                            'Ömür Boyu Premium',
                            'Tek seferlik ödeme, süresiz erişim',
                            isRecommended: true,
                          ),

                          
                          const SizedBox(height: 20),
                          
                          // Geri yükleme butonu
                          Center(
                            child: TextButton(
                              onPressed: _isLoading ? null : _restorePurchases,
                              child: Text(
                                'Satın Almaları Geri Yükle',
                                style: AppTheme.body(color: Colors.white, fontWeight: FontWeight.w700).copyWith(
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                          
                          const SizedBox(height: 15),
                          
                          // Bilgilendirme metni
                          Text(
                            'Satın alma işlemi Google Play Store veya App Store üzerinden gerçekleştirilir. '
                            'Tek seferlik ödeme ile ömür boyu premium erişim kazanın.',
                            style: AppTheme.body(fontSize: 12, color: Colors.white.withValues(alpha: 0.7)),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem(IconData icon, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: AppTheme.clayDecoration(
              background: Colors.white,
              borderColor: Colors.white,
              shadowColor: Colors.white.withValues(alpha: 0.4),
              radius: 12,
              borderWidth: 2,
              shadowOffset: 2,
            ),
            child: Icon(
              icon,
              color: AppColors.primary,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTheme.heading(fontSize: 16)),
                Text(
                  description,
                  style: AppTheme.body(fontSize: 14, color: Colors.white.withValues(alpha: 0.8)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPurchaseOption(
    ProductDetails? product,
    String title,
    String subtitle, {
    bool isRecommended = false,
  }) {
    final bool hasRealProduct = product != null;
    final String price = hasRealProduct ? product.price : '₺40,00';
    final String productTitle = hasRealProduct ? product.title : title;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: AppTheme.clayDecoration(
        background: Colors.white,
        borderColor: isRecommended ? AppColors.secondaryDark : AppColors.primaryDark,
        shadowColor: isRecommended ? AppColors.secondaryDark : AppColors.primaryDark,
        radius: 20,
        borderWidth: isRecommended ? 3.5 : 2.5,
        shadowOffset: isRecommended ? 6 : 4,
      ),
      child: Column(
        children: [
          if (isRecommended)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: AppTheme.clayDecoration(
                background: AppColors.secondary,
                borderColor: AppColors.secondaryDark,
                shadowColor: AppColors.secondaryDark,
                radius: 20,
                borderWidth: 2,
                shadowOffset: 2,
              ),
              child: Text('ÖNERİLEN', style: AppTheme.heading(fontSize: 12)),
            ),

          if (isRecommended) const SizedBox(height: 12),

          Text(productTitle, style: AppTheme.heading(fontSize: 18, color: AppColors.primary)),

          const SizedBox(height: 8),

          Text(subtitle, style: AppTheme.body(fontSize: 14, color: Colors.grey[600]!)),

          const SizedBox(height: 16),

          Text(price, style: AppTheme.heading(fontSize: 26, color: AppColors.primary)),

          Text('Tek seferlik ödeme', style: AppTheme.body(fontSize: 12, color: Colors.grey[600]!)),

          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            height: 52,
            child: Container(
              // Ink yerine Container + Material/InkWell (ghost render
              // sorunu için bkz. yukarıdaki açıklama).
              decoration: AppTheme.clayDecoration(
                background: AppColors.secondary,
                borderColor: AppColors.secondaryDark,
                shadowColor: AppColors.secondaryDark,
                radius: 14,
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(14),
                  onTap: _isPurchasing ? null : () => hasRealProduct ? _purchasePremium(product) : _showTestModeWarning(),
                  child: Center(
                    child: _isPurchasing
                        ? const SizedBox(
                            height: 20,
                            width: 20,
                            child: CircularProgressIndicator(strokeWidth: 2, valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
                          )
                        : Text('Satın Al', style: AppTheme.heading(fontSize: 16)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
