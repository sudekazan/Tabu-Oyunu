import 'package:flutter/material.dart';
import '../core/app_theme.dart';
import '../core/app_routes.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../core/plan_manager.dart';
import '../data/premium/kategoriler/index.dart';
import 'premium_satin_alma_ekrani.dart';
import '../core/reklam_servisi.dart';

class KategorilerSayfasi extends StatefulWidget {
  const KategorilerSayfasi({super.key});

  @override
  State<KategorilerSayfasi> createState() => _KategorilerSayfasiState();
}

class _KategorilerSayfasiState extends State<KategorilerSayfasi> {
  PlanType _plan = PlanType.free;
  Set<PremiumKategori> _seciliPremiumKategoriler = {};
  FreeKategori? _seciliFreeKategori;
  bool _premiumTum = false;
  BannerAd? _bannerAd;
  bool _bannerAdLoaded = false;

  @override
  void initState() {
    super.initState();
    _yukle();
    _loadBannerAd();
  }

  Future<void> _loadBannerAd() async {
    // Only load ads for non-premium users
    if (_plan != PlanType.premium) {
      _bannerAd = await ReklamServisi.createBannerAd();
      if (_bannerAd != null) {
        _bannerAd!.load().then((_) {
          if (mounted) {
            setState(() {
              _bannerAdLoaded = true;
            });
          }
        });
      }
    } else {
      // Ensure banner is hidden for premium users
      if (mounted) {
        setState(() {
          _bannerAdLoaded = false;
          _bannerAd?.dispose();
          _bannerAd = null;
        });
      }
    }
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  Future<void> _yukle() async {
    final plan = await PlanManager.getPlan();
    final secili = await PlanCategories.getSelectedPremiumCategories();
    final freeSel = await PlanCategories.getSelectedFreeCategory();
    if (mounted) {
      final bool wasPremium = _plan == PlanType.premium;
      setState(() {
        _plan = plan;
        _seciliPremiumKategoriler = secili;
        _seciliFreeKategori = freeSel;
        _premiumTum = plan == PlanType.premium && secili.isEmpty;
      });

      // Eğer premium durumu değiştiyse banner durumunu güncelle
      // (not: setState içinde _plan zaten güncellendiği için karşılaştırma
      // güncellemeden önce alınan wasPremium ile yapılmalı, yoksa bu koşul
      // hiçbir zaman tetiklenmezdi).
      if (wasPremium != (plan == PlanType.premium)) {
        _loadBannerAd();
      }
    }
  }

  Future<void> _togglePremiumKategori(PremiumKategori k) async {
    setState(() {
      _premiumTum = false;
      _seciliPremiumKategoriler.clear();
      _seciliPremiumKategoriler.add(k);
      // Premium kullanıcılar için free kategorileri temizleme zorunluluğunu kaldırıyoruz
      if (_plan != PlanType.premium) {
        _seciliFreeKategori = null; // Free kullanıcılar için tek seçim kuralını koru
      }
    });
    await PlanCategories.setSelectedPremiumCategories(_seciliPremiumKategoriler);
    await PlanCategories.setUseFreeSelection(false);
  }

  Future<void> _navigateToPremiumPage() async {
    // Aşağıdan kayarak gelen animasyon ile premium satın alma ekranına yönlendir
    final bool? purchased = await Navigator.of(context).push<bool>(
      AppRoutes.slide<bool>(const PremiumSatinAlmaEkrani(), begin: AppRoutes.fromBottom),
    );

    if (purchased == true) {
      // Premium satın alındı, planı güncelle
      setState(() => _plan = PlanType.premium);
      await PlanManager.setPlan(PlanType.premium);
    }
  }

  bool get _secimYapildiMi {
    if (_plan == PlanType.premium) {
      // Premium kullanıcılar için hem free hem premium seçimlerini kontrol et
      return _premiumTum || _seciliPremiumKategoriler.isNotEmpty || _seciliFreeKategori != null;
    } else {
      return _seciliFreeKategori != null;
    }
  }

  bool get _devamAktif => _secimYapildiMi;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final bool isSmall = size.width < 360;
    final bool isMedium = size.width >= 360 && size.width < 600;

    final EdgeInsets padAll = EdgeInsets.all(isSmall ? 12 : isMedium ? 16 : 24);
    final double titleFs = isSmall ? 20 : isMedium ? 22 : 24;
    final double labelFs = isSmall ? 14 : isMedium ? 16 : 16;

    return Scaffold(
      body: Container(
        decoration: AppTheme.backgroundDecoration,
        child: SafeArea(
          child: Column(
            children: [
              // Banner reklam - sadece premium olmayan kullanıcılar için
              if (_plan != PlanType.premium && _bannerAdLoaded && _bannerAd != null)
                SizedBox(
                  width: _bannerAd!.size.width.toDouble(),
                  height: _bannerAd!.size.height.toDouble(),
                  child: AdWidget(ad: _bannerAd!),
                ),
              
              // Üst Bar
              Container(
                padding: padAll,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back, color: Colors.white, size: isSmall ? 22 : isMedium ? 24 : 28),
                    ),
                    SizedBox(width: isSmall ? 10 : 16),
                    Text(
                      'Kategoriler',
                      style: AppTheme.heading(fontSize: titleFs, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),

              // Gövde kartı
              Expanded(
                child: Container(
                  margin: padAll,
                  decoration: AppTheme.clayDecoration(
                    background: Colors.white,
                    borderColor: AppColors.primary,
                    shadowColor: AppColors.primaryDark,
                    radius: isSmall ? 20 : 26,
                    borderWidth: 3,
                    shadowOffset: 7,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: isSmall ? 12 : 16, vertical: 8),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Plan seçim kısmı kaldırıldı - doğrudan kategoriler gösteriliyor
                          
                          // Özel: Free 300 kelime bilgi kutusu
                          _kategoriKarti(
                            secili: _seciliFreeKategori == FreeKategori.freeHavuz,
                            isSmall: isSmall,
                            labelFs: labelFs,
                            leading: Icon(freeKategoriIconlari[FreeKategori.freeHavuz]!, color: AppColors.primary),
                            title: 'Free Havuz (300+ kelime)',
                            onTap: () async {
                              setState(() {
                                _seciliFreeKategori = FreeKategori.freeHavuz;
                                _premiumTum = false;
                                // Premium kullanıcılar için premium seçimleri temizleme zorunluluğunu kaldır
                                if (_plan != PlanType.premium) {
                                  _seciliPremiumKategoriler.clear();
                                }
                              });
                              await PlanCategories.setSelectedFreeCategory(FreeKategori.freeHavuz);
                              await PlanCategories.setUseFreeSelection(true);
                              await PlanCategories.setSelectedPremiumCategories(_seciliPremiumKategoriler);
                            },
                          ),

                          // Çocuklar kategorileri (Free/Premium)
                          _kategoriKarti(
                            secili: _seciliFreeKategori == FreeKategori.cocuklar,
                            isSmall: isSmall,
                            labelFs: labelFs,
                            leading: Icon(freeKategoriIconlari[FreeKategori.cocuklar]!, color: AppColors.primary),
                            title: 'Çocuklar (Free 200+)',
                            onTap: () async {
                              setState(() {
                                _seciliFreeKategori = FreeKategori.cocuklar;
                                _premiumTum = false;
                                // Premium kullanıcılar için premium seçimleri temizleme zorunluluğunu kaldır
                                if (_plan != PlanType.premium) {
                                  _seciliPremiumKategoriler.clear();
                                }
                              });
                              await PlanCategories.setSelectedFreeCategory(FreeKategori.cocuklar);
                              await PlanCategories.setUseFreeSelection(true);
                              await PlanCategories.setSelectedPremiumCategories(_seciliPremiumKategoriler);
                            },
                          ),

                          // Özel: Premium tüm kelimeler (karışık) — Free kartlardan sonra gelsin
                          _kategoriKarti(
                            secili: _premiumTum,
                            isSmall: isSmall,
                            labelFs: labelFs,
                            leading: _plan == PlanType.free
                                ? const Icon(Icons.lock, color: Colors.grey)
                                : const Icon(Icons.all_inclusive, color: AppColors.primary),
                            title: 'Premium Havuz (3400+)',
                            onTap: _plan == PlanType.free
                                ? _navigateToPremiumPage
                                : () async {
                                    setState(() {
                                      _seciliFreeKategori = null;
                                      _premiumTum = !_premiumTum;
                                      if (_premiumTum) {
                                        _seciliPremiumKategoriler.clear();
                                      }
                                    });
                                    await PlanCategories.setSelectedPremiumCategories(_seciliPremiumKategoriler);
                                    await PlanCategories.setUseFreeSelection(false);
                                  },
                          ),

                          // Çocuklar (Premium 300+) - Premium havuzun altına taşındı
                          _kategoriKarti(
                            secili: _seciliPremiumKategoriler.contains(PremiumKategori.cocuklar),
                            isSmall: isSmall,
                            labelFs: labelFs,
                            leading: _plan == PlanType.free
                                ? const Icon(Icons.lock, color: Colors.grey)
                                : Icon(premiumKategoriIconlari[PremiumKategori.cocuklar]!, color: AppColors.primary),
                            title: 'Çocuklar (Premium 300+)',
                            onTap: _plan == PlanType.free
                                ? _navigateToPremiumPage
                                : () async {
                                    setState(() {
                                      // Premium kullanıcılar için free seçimlerini temizleme zorunluluğunu kaldır
                                      if (_plan != PlanType.premium) {
                                        _seciliFreeKategori = null;
                                      }
                                      _premiumTum = false;
                                      if (_seciliPremiumKategoriler.contains(PremiumKategori.cocuklar)) {
                                        _seciliPremiumKategoriler.remove(PremiumKategori.cocuklar);
                                      } else {
                                        _seciliPremiumKategoriler.add(PremiumKategori.cocuklar);
                                      }
                                    });
                                    await PlanCategories.setSelectedPremiumCategories(_seciliPremiumKategoriler);
                                    await PlanCategories.setUseFreeSelection(false);
                                  },
                          ),

                          // Kategoriler (tek listede sırayla) – Çocuklar zaten yukarıda gösterildiği için hariç tut
                          ...PremiumKategori.values.where((k) => k != PremiumKategori.cocuklar).map((k) {
                            final bool kilitli = _plan == PlanType.free; // Premium kategoriler kilitli
                            final bool secili = _seciliPremiumKategoriler.contains(k);
                            return _kategoriKarti(
                              secili: secili,
                              isSmall: isSmall,
                              labelFs: labelFs,
                              leading: kilitli
                                  ? const Icon(Icons.lock, color: Colors.grey)
                                  : Icon(premiumKategoriIconlari[k]!, color: AppColors.primary),
                              title: premiumKategoriAdlari[k]!,
                              onTap: kilitli ? _navigateToPremiumPage : () => _togglePremiumKategori(k),
                            );
                          }),

                          const SizedBox(height: 80),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(padAll.left, 12, padAll.right, 12),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 20, offset: Offset(0, -5)),
        ]),
        child: SizedBox(
          height: isSmall ? 52 : 60,
          child: Opacity(
            // Buton gerçekten disable edilirse (onPressed: null) kullanıcı
            // neden tıklayamadığını anlayamıyordu; bunun yerine görsel olarak
            // soluklaştırıp tıklanabilir bırakıyoruz ki açıklayıcı bir uyarı
            // verebilelim.
            opacity: _devamAktif ? 1 : 0.5,
            child: Material(
              color: Colors.transparent,
              child: Ink(
                decoration: AppTheme.clayDecoration(
                  background: AppColors.primary,
                  borderColor: AppColors.primaryDark,
                  shadowColor: AppColors.primaryDark,
                  radius: isSmall ? 16 : 18,
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(isSmall ? 16 : 18),
                  onTap: () {
                    if (!_devamAktif) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Devam etmek için önce bir kategori seçmelisin.'),
                          backgroundColor: Colors.orange,
                          duration: Duration(seconds: 2),
                        ),
                      );
                      return;
                    }
                    Navigator.pushNamed(context, AppRoutes.ayarlar);
                  },
                  child: Center(
                    child: Text('DEVAM', style: AppTheme.heading(fontSize: 16)),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Tekrarlanan kategori kartı tasarımı: kil (clay) stilinde seçili/kilitli
  // durum, kalın kenarlık ve düz ofset gölge ile gösterilir.
  Widget _kategoriKarti({
    required bool secili,
    required bool isSmall,
    required double labelFs,
    required Widget leading,
    required String title,
    required VoidCallback? onTap,
  }) {
    final double radius = isSmall ? 16 : 18;
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: AppTheme.clayDecoration(
        background: secili ? AppColors.primarySoft : Colors.white,
        borderColor: secili ? AppColors.primary : const Color(0xFFEDE1F7),
        shadowColor: secili ? AppColors.primary : const Color(0xFFF4EEFB),
        radius: radius,
        borderWidth: secili ? 2.5 : 2,
        shadowOffset: 3,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          onTap: onTap,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            leading: leading,
            title: Text(
              title,
              style: AppTheme.body(
                fontSize: labelFs,
                fontWeight: FontWeight.w700,
                color: secili ? AppColors.primary : Colors.black87,
              ),
            ),
          ),
        ),
      ),
    );
  }
}



