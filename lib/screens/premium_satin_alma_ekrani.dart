import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  PlanType _plan = PlanType.free; // Test için plan değişkeni

  @override
  void initState() {
    super.initState();
    _initializePremiumService();
    _loadPlanStatus(); // Plan durumunu yükle
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

  Future<void> _loadPlanStatus() async {
    final plan = await PlanManager.getPlan();
    if (mounted) {
      setState(() => _plan = plan);
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

        // Kısa bir gecikme sonrası geri dön
        await Future.delayed(const Duration(milliseconds: 500));
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
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF6A1B9A),
              Color(0xFFFF7043),
            ],
          ),
        ),
        child: Column(
          children: [
            AppBar(
              title: Text('Premium\'a Geç', 
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700, 
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
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
                                Text(
                                  'TABU PREMIUM',
                                  style: GoogleFonts.poppins(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  'Sınırsız oyun deneyimi',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: Colors.white.withValues(alpha: 0.9),
                                  ),
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
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
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
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.white.withValues(alpha: 0.6),
                            ),
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
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 24,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  description,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white.withValues(alpha: 0.7),
                  ),
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
      decoration: BoxDecoration(
        border: Border.all(
          color: isRecommended ? Colors.white : Colors.white.withValues(alpha: 0.3),
          width: isRecommended ? 2 : 1,
        ),
        borderRadius: BorderRadius.circular(16),
        color: isRecommended ? Colors.white.withValues(alpha: 0.15) : Colors.white.withValues(alpha: 0.1),
      ),
      child: Column(
        children: [
          if (isRecommended)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: const Color(0xFF6A1B9A),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'ÖNERİLEN',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          
          if (isRecommended) const SizedBox(height: 12),
          
          Text(
            productTitle,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          
          const SizedBox(height: 8),
          
          Text(
            subtitle,
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.white.withValues(alpha: 0.7),
            ),
          ),
          
          const SizedBox(height: 16),
          
          Text(
            '₺40,00',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          
          Text(
            'Tek seferlik ödeme',
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Colors.white.withValues(alpha: 0.7),
            ),
          ),
          
          const SizedBox(height: 20),
          
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _isPurchasing ? null : () => hasRealProduct ? _purchasePremium(product!) : _showTestModeWarning(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF6A1B9A),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 8,
              ),
              child: _isPurchasing
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF6A1B9A)),
                      ),
                    )
                  : Text(
                      'Satın Al',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  // Test için satın alma seçeneği
  Widget _buildTestPurchaseOption() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withValues(alpha: 0.15),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: const Color(0xFF6A1B9A),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'ÖNERİLEN',
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          
          const SizedBox(height: 12),
          
          Text(
            'Ömür Boyu Premium',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          
          const SizedBox(height: 8),
          
          Text(
            'Tek seferlik ödeme, süresiz erişim',
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.white.withValues(alpha: 0.7),
            ),
          ),
          
          const SizedBox(height: 16),
          
          Text(
            '₺40,00',
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
          
          Text(
            'Tek seferlik ödeme',
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Colors.white.withValues(alpha: 0.7),
            ),
          ),
          
          const SizedBox(height: 20),
          
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _isPurchasing ? null : () => _activatePremiumForTesting(),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF6A1B9A),
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 8,
              ),
              child: _isPurchasing
                  ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF6A1B9A)),
                      ),
                    )
                  : Text(
                      'Satın Al',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
