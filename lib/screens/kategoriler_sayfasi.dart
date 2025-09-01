import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../core/plan_manager.dart';
import '../data/premium/kategoriler/index.dart';
import 'ayarlar_screens.dart';
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
      setState(() {
        final wasPremium = _plan == PlanType.premium;
        _plan = plan;
        _seciliPremiumKategoriler = secili;
        _seciliFreeKategori = freeSel;
        _premiumTum = plan == PlanType.premium && secili.isEmpty;
      });
      
      // Eğer premium durumu değiştiyse banner durumunu güncelle
      if (_plan != plan) {
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

  Future<void> _toggleFreeKategori(FreeKategori k) async {
    setState(() {
      _seciliFreeKategori = k;
      // Eğer kullanıcı premium değilse, premium seçimleri temizle
      if (_plan != PlanType.premium) {
        _seciliPremiumKategoriler.clear();
      }
      _premiumTum = false;
    });
    await PlanCategories.setSelectedFreeCategory(k);
    await PlanCategories.setUseFreeSelection(true);
  }

  Future<void> _navigateToPremiumPage() async {
    // Aşağıdan kayarak gelen animasyon ile premium satın alma ekranına yönlendir
    final bool? purchased = await Navigator.of(context).push<bool>(
      PageRouteBuilder<bool>(
        pageBuilder: (context, animation, secondaryAnimation) => const PremiumSatinAlmaEkrani(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0); // Aşağıdan başla
          const end = Offset.zero;
          const curve = Curves.easeOut;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
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
    final double sectionTitleFs = isSmall ? 20 : isMedium ? 22 : 22;
    final double labelFs = isSmall ? 14 : isMedium ? 16 : 16;

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
        child: SafeArea(
          child: Column(
            children: [
              // Banner reklam - sadece premium olmayan kullanıcılar için
              if (_plan != PlanType.premium && _bannerAdLoaded && _bannerAd != null)
                Container(
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
                      style: GoogleFonts.poppins(
                        fontSize: titleFs,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              // Gövde kartı
              Expanded(
                child: Container(
                  margin: padAll,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFFFFFFF),
                        Color(0xFFFFF3EC),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(isSmall ? 18 : 24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: isSmall ? 14 : 20,
                        offset: Offset(0, isSmall ? 6 : 10),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: isSmall ? 12 : 16, vertical: 8),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Plan seçim kısmı kaldırıldı - doğrudan kategoriler gösteriliyor
                          
                          // Özel: Free 300 kelime bilgi kutusu
                          GestureDetector(
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
                            child: Container(
                            margin: const EdgeInsets.only(bottom: 6),
                            decoration: BoxDecoration(
                              color: _seciliFreeKategori == FreeKategori.freeHavuz ? const Color(0xFF6A1B9A).withOpacity(0.06) : Colors.white,
                              borderRadius: BorderRadius.circular(isSmall ? 14 : 16),
                              border: Border.all(color: _seciliFreeKategori == FreeKategori.freeHavuz ? const Color(0xFF6A1B9A) : const Color(0xFF6A1B9A).withOpacity(0.12), width: 1.5),
                            ),
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              leading: Icon(freeKategoriIconlari[FreeKategori.freeHavuz]!, color: const Color(0xFF6A1B9A)),
                              title: Text('Free Havuz (349 kelime)', style: GoogleFonts.poppins(fontSize: labelFs)),
                            ),
                          ),
                          ),

                          // Çocuklar kategorileri (Free/Premium)
                          GestureDetector(
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
                            child: Container(
                            margin: const EdgeInsets.only(bottom: 6),
                            decoration: BoxDecoration(
                              color: _seciliFreeKategori == FreeKategori.cocuklar ? const Color(0xFF6A1B9A).withOpacity(0.06) : Colors.white,
                              borderRadius: BorderRadius.circular(isSmall ? 14 : 16),
                              border: Border.all(color: _seciliFreeKategori == FreeKategori.cocuklar ? const Color(0xFF6A1B9A) : const Color(0xFF6A1B9A).withOpacity(0.12), width: 1.5),
                            ),
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              leading: Icon(freeKategoriIconlari[FreeKategori.cocuklar]!, color: const Color(0xFF6A1B9A)),
                              title: Text('Çocuklar (Free 100+)', style: GoogleFonts.poppins(fontSize: labelFs)),
                            ),
                          ),
                          ),

                          // Özel: Premium tüm kelimeler (karışık) — Free kartlardan sonra gelsin
                          Container(
                            margin: const EdgeInsets.only(bottom: 6),
                            decoration: BoxDecoration(
                              color: _premiumTum ? const Color(0xFF6A1B9A).withOpacity(0.06) : Colors.white,
                              borderRadius: BorderRadius.circular(isSmall ? 14 : 16),
                              border: Border.all(color: _premiumTum ? const Color(0xFF6A1B9A) : const Color(0xFF6A1B9A).withOpacity(0.12), width: 1.5),
                            ),
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              leading: _plan == PlanType.free
                                  ? const Icon(Icons.lock, color: Colors.grey)
                                  : const Icon(Icons.all_inclusive, color: Color(0xFF6A1B9A)),
                              title: Text('Premium Havuz (4000+)', style: GoogleFonts.poppins(fontSize: labelFs)),
                              trailing: null,
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
                          ),

                          // Çocuklar (Premium 300+) - Premium havuzun altına taşındı
                          Container(
                            margin: const EdgeInsets.only(bottom: 6),
                            decoration: BoxDecoration(
                              color: (_seciliPremiumKategoriler.contains(PremiumKategori.cocuklar)) ? const Color(0xFF6A1B9A).withOpacity(0.06) : Colors.white,
                              borderRadius: BorderRadius.circular(isSmall ? 14 : 16),
                              border: Border.all(color: (_seciliPremiumKategoriler.contains(PremiumKategori.cocuklar)) ? const Color(0xFF6A1B9A) : const Color(0xFF6A1B9A).withOpacity(0.12), width: 1.5),
                            ),
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                              leading: _plan == PlanType.free
                                  ? const Icon(Icons.lock, color: Colors.grey)
                                  : Icon(premiumKategoriIconlari[PremiumKategori.cocuklar]!, color: const Color(0xFF6A1B9A)),
                              title: Text('Çocuklar (Premium 550+)', style: GoogleFonts.poppins(fontSize: labelFs)),
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
                              trailing: null,
                            ),
                          ),

                          // Kategoriler (tek listede sırayla) – Çocuklar zaten yukarıda gösterildiği için hariç tut
                          ...PremiumKategori.values.where((k) => k != PremiumKategori.cocuklar).map((k) {
                            final bool kilitli = _plan == PlanType.free; // Premium kategoriler kilitli
                            final bool secili = _seciliPremiumKategoriler.contains(k);
                            return Container(
                              margin: const EdgeInsets.only(bottom: 6),
                              decoration: BoxDecoration(
                                color: secili ? const Color(0xFF6A1B9A).withOpacity(0.06) : Colors.white,
                                borderRadius: BorderRadius.circular(isSmall ? 14 : 16),
                                border: Border.all(color: secili ? const Color(0xFF6A1B9A) : const Color(0xFF6A1B9A).withOpacity(0.12), width: 1.5),
                              ),
                              child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                leading: kilitli
                                    ? const Icon(Icons.lock, color: Colors.grey)
                                    : Icon(premiumKategoriIconlari[k]!, color: const Color(0xFF6A1B9A)),
                                title: Text(premiumKategoriAdlari[k]!, style: GoogleFonts.poppins(fontSize: labelFs)),
                                trailing: null,
                                onTap: kilitli ? _navigateToPremiumPage : () => _togglePremiumKategori(k),
                              ),
                            );
                          }).toList(),

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
          child: ElevatedButton(
            onPressed: _devamAktif
                ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AyarlarEkrani()),
                    );
                  }
                : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6A1B9A),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(isSmall ? 12 : 14)),
            ),
            child: Text('DEVAM', style: GoogleFonts.poppins(fontWeight: FontWeight.w700)),
          ),
        ),
      ),
    );
  }
}



