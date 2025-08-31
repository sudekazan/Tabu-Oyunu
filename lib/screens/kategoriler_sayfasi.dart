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
        _plan = plan;
        _seciliPremiumKategoriler = secili;
        _seciliFreeKategori = freeSel;
        _premiumTum = plan == PlanType.premium && secili.isEmpty;
      });
    }
  }

  Future<void> _togglePremiumKategori(PremiumKategori k) async {
    setState(() {
      _premiumTum = false;
      _seciliFreeKategori = null; // tek seçim: free seçimleri temizle
      _seciliPremiumKategoriler.clear();
      _seciliPremiumKategoriler.add(k);
    });
    await PlanCategories.setSelectedPremiumCategories(_seciliPremiumKategoriler);
    await PlanCategories.setUseFreeSelection(false);
  }

  void _showPremiumAlert() {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text('Premium Gerekli', style: GoogleFonts.poppins(fontWeight: FontWeight.w700)),
        content: Text(
          'Bu kategori Premium kullanıcılar içindir. Premium’a geçerek erişebilirsiniz.',
          style: GoogleFonts.poppins(),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: const Text('İptal')
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);
              
              // Premium satın alma ekranına yönlendir
              final bool? purchased = await Navigator.of(context).push<bool>(
                MaterialPageRoute<bool>(
                  builder: (context) => const PremiumSatinAlmaEkrani(),
                ),
              );
              
              if (purchased == true) {
                // Premium satın alındı, planı güncelle
                setState(() => _plan = PlanType.premium);
                await PlanManager.setPlan(PlanType.premium);
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF6A1B9A),
              foregroundColor: Colors.white,
            ),
            child: Text('Premium\'a Geç', style: GoogleFonts.poppins()),
          ),
        ],
      ),
    );
  }

  bool get _devamAktif {
    if (_plan == PlanType.free) {
      return _seciliFreeKategori != null;
    } else {
      return _premiumTum || _seciliPremiumKategoriler.isNotEmpty;
    }
  }

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
              // Banner reklam
              if (_bannerAdLoaded && _bannerAd != null)
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
                    padding: EdgeInsets.all(isSmall ? 12 : 16),
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
                                _seciliPremiumKategoriler.clear();
                              });
                              await PlanCategories.setSelectedFreeCategory(FreeKategori.freeHavuz);
                              await PlanCategories.setUseFreeSelection(true);
                              await PlanCategories.setSelectedPremiumCategories(_seciliPremiumKategoriler);
                            },
                            child: Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: _seciliFreeKategori == FreeKategori.freeHavuz ? const Color(0xFF6A1B9A).withOpacity(0.06) : Colors.white,
                              borderRadius: BorderRadius.circular(isSmall ? 14 : 16),
                              border: Border.all(color: _seciliFreeKategori == FreeKategori.freeHavuz ? const Color(0xFF6A1B9A) : const Color(0xFF6A1B9A).withOpacity(0.12), width: 1.5),
                            ),
                            child: ListTile(
                              leading: const Icon(Icons.inventory_2, color: Color(0xFF6A1B9A)),
                              title: Text('Free Havuz (300 kelime)', style: GoogleFonts.poppins(fontSize: labelFs)),
                              subtitle: Text('Ücretsiz planda kullanılabilir', style: GoogleFonts.poppins(fontSize: isSmall ? 11 : 12, color: Colors.grey[700])),
                            ),
                          ),
                          ),

                          // Çocuklar kategorileri (Free/Premium)
                          GestureDetector(
                            onTap: () async {
                              setState(() {
                                _seciliFreeKategori = FreeKategori.cocuklar;
                                _premiumTum = false;
                                _seciliPremiumKategoriler.clear();
                              });
                              await PlanCategories.setSelectedFreeCategory(FreeKategori.cocuklar);
                              await PlanCategories.setUseFreeSelection(true);
                              await PlanCategories.setSelectedPremiumCategories(_seciliPremiumKategoriler);
                            },
                            child: Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: _seciliFreeKategori == FreeKategori.cocuklar ? const Color(0xFF6A1B9A).withOpacity(0.06) : Colors.white,
                              borderRadius: BorderRadius.circular(isSmall ? 14 : 16),
                              border: Border.all(color: _seciliFreeKategori == FreeKategori.cocuklar ? const Color(0xFF6A1B9A) : const Color(0xFF6A1B9A).withOpacity(0.12), width: 1.5),
                            ),
                            child: ListTile(
                              leading: const Icon(Icons.child_care, color: Color(0xFF6A1B9A)),
                              title: Text('Çocuklar (Free 100+)', style: GoogleFonts.poppins(fontSize: labelFs)),
                              subtitle: Text('Free için basitleştirilmiş havuz', style: GoogleFonts.poppins(fontSize: isSmall ? 11 : 12, color: Colors.grey[700])),
                            ),
                          ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: (_seciliPremiumKategoriler.contains(PremiumKategori.cocuklar)) ? const Color(0xFF6A1B9A).withOpacity(0.06) : Colors.white,
                              borderRadius: BorderRadius.circular(isSmall ? 14 : 16),
                              border: Border.all(color: (_seciliPremiumKategoriler.contains(PremiumKategori.cocuklar)) ? const Color(0xFF6A1B9A) : const Color(0xFF6A1B9A).withOpacity(0.12), width: 1.5),
                            ),
                            child: ListTile(
                              leading: _plan == PlanType.free
                                  ? const Icon(Icons.lock, color: Colors.grey)
                                  : const Icon(Icons.child_friendly, color: Color(0xFF6A1B9A)),
                              title: Text('Çocuklar (Premium 300+)', style: GoogleFonts.poppins(fontSize: labelFs)),
                              subtitle: Text('Premium için daha geniş havuz', style: GoogleFonts.poppins(fontSize: isSmall ? 11 : 12, color: Colors.grey[700])),
                              onTap: _plan == PlanType.free
                                  ? _showPremiumAlert
                                  : () async {
                                      setState(() {
                                        _seciliFreeKategori = null;
                                        _premiumTum = false;
                                        _seciliPremiumKategoriler.clear();
                                        _seciliPremiumKategoriler.add(PremiumKategori.cocuklar);
                                      });
                                      await PlanCategories.setSelectedPremiumCategories(_seciliPremiumKategoriler);
                                      await PlanCategories.setUseFreeSelection(false);
                                    },
                              trailing: null,
                            ),
                          ),

                          // Özel: Premium tüm kelimeler (karışık) — Free kartlardan sonra gelsin
                          Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              color: _premiumTum ? const Color(0xFF6A1B9A).withOpacity(0.06) : Colors.white,
                              borderRadius: BorderRadius.circular(isSmall ? 14 : 16),
                              border: Border.all(color: _premiumTum ? const Color(0xFF6A1B9A) : const Color(0xFF6A1B9A).withOpacity(0.12), width: 1.5),
                            ),
                            child: ListTile(
                              leading: _plan == PlanType.free
                                  ? const Icon(Icons.lock, color: Colors.grey)
                                  : const Icon(Icons.all_inclusive, color: Color(0xFF6A1B9A)),
                              title: Text('Premium havuz (2000+)', style: GoogleFonts.poppins(fontSize: labelFs)),
                              subtitle: Text('Tüm premium kategorilerinden karışık', style: GoogleFonts.poppins(fontSize: isSmall ? 11 : 12, color: Colors.grey[700])),
                              trailing: null,
                              onTap: _plan == PlanType.free
                                  ? _showPremiumAlert
                                  : () async {
                                      setState(() {
                                        _seciliFreeKategori = null;
                                        _premiumTum = true;
                                        _seciliPremiumKategoriler.clear();
                                      });
                                      await PlanCategories.setSelectedPremiumCategories(_seciliPremiumKategoriler);
                                      await PlanCategories.setUseFreeSelection(false);
                                    },
                            ),
                          ),

                          // Kategoriler (tek listede sırayla) – Çocuklar zaten yukarıda gösterildiği için hariç tut
                          ...PremiumKategori.values.where((k) => k != PremiumKategori.cocuklar).map((k) {
                            final bool kilitli = _plan == PlanType.free; // Premium kategoriler kilitli
                            final bool secili = _seciliPremiumKategoriler.contains(k);
                            return Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                color: secili ? const Color(0xFF6A1B9A).withOpacity(0.06) : Colors.white,
                                borderRadius: BorderRadius.circular(isSmall ? 14 : 16),
                                border: Border.all(color: secili ? const Color(0xFF6A1B9A) : const Color(0xFF6A1B9A).withOpacity(0.12), width: 1.5),
                              ),
                              child: ListTile(
                                leading: kilitli ? const Icon(Icons.lock, color: Colors.grey) : const Icon(Icons.checklist, color: Color(0xFF6A1B9A)),
                                title: Text(premiumKategoriAdlari[k]!, style: GoogleFonts.poppins(fontSize: labelFs)),
                                trailing: null,
                                onTap: kilitli ? _showPremiumAlert : () => _togglePremiumKategori(k),
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



