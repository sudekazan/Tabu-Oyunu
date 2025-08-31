import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'kategoriler_sayfasi.dart';
import 'premium_satin_alma_ekrani.dart';
import '../core/reklam_servisi.dart';
import '../core/plan_manager.dart';

class GirisEkraniSayfasi extends StatefulWidget {
  const GirisEkraniSayfasi({super.key});

  @override
  State<GirisEkraniSayfasi> createState() => _GirisEkraniSayfasiState();
}

class _GirisEkraniSayfasiState extends State<GirisEkraniSayfasi> {
  BannerAd? _bannerAd;
  bool _bannerAdLoaded = false;
  PlanType _currentPlan = PlanType.free;


  @override
  void initState() {
    super.initState();
    _loadBannerAd();
    _loadPlanStatus();
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
    } else {
      // Premium kullanıcı için reklam yok
      if (mounted) {
        setState(() {
          _bannerAdLoaded = false;
        });
      }
    }
  }

  Future<void> _loadPlanStatus() async {
    try {
      final plan = await PlanManager.getPlan();
      if (mounted) {
        setState(() {
          _currentPlan = plan;
        });
      }
    } catch (e) {
      if (mounted) {
        // Plan yükleme tamamlandı
      }
    }
  }

  Future<void> _changePlan(PlanType newPlan) async {
    try {
      await PlanManager.setPlan(newPlan);
      if (mounted) {
        setState(() {
          _currentPlan = newPlan;
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(newPlan == PlanType.premium 
              ? '🎉 Premium plan aktifleştirildi!' 
              : '📱 Free plan aktifleştirildi!'),
            backgroundColor: const Color(0xFF6A1B9A),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Plan değiştirme hatası!'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
              
              // Ana içerik
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Logo ve Başlık
                        const Icon(
                          Icons.games,
                          size: 80,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'TABU OYUNU',
                          style: GoogleFonts.poppins(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 24),
                        
                        // Mevcut Plan Göstergesi
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: _currentPlan == PlanType.premium 
                                ? Colors.purple.withValues(alpha: 0.2) 
                                : Colors.blue.withValues(alpha: 0.2),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: _currentPlan == PlanType.premium 
                                  ? Colors.purple 
                                  : Colors.blue,
                              width: 1.5,
                            ),
                          ),
                          child: Text(
                            _currentPlan == PlanType.premium 
                                ? 'PREMIUM AKTİF' 
                                : 'ÜCRETSİZ PLAN',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 32),

                        // Oyuna Başla Butonu
                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const KategorilerSayfasi(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: const Color(0xFF6A1B9A),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              elevation: 8,
                            ),
                            child: Text(
                              'OYUNA BAŞLA',
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 16),

                        // Premium'a Geç Butonu (sadece free kullanıcılar için)
                        if (_currentPlan == PlanType.free)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 24),
                            child: SizedBox(
                              width: double.infinity,
                              height: 56,
                              child: ElevatedButton(
                                onPressed: () async {
                                  final bool? result = await Navigator.push<bool>(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const PremiumSatinAlmaEkrani(),
                                    ),
                                  );
                                  
                                  // Premium satın alındıysa plan durumunu güncelle
                                  if (result == true) {
                                    _loadPlanStatus();
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  elevation: 4,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(Icons.workspace_premium, size: 24),
                                    const SizedBox(width: 8),
                                    Text(
                                      'PREMIUM\'A GEÇ',
                                      style: GoogleFonts.poppins(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        
                        // Test Modu Seçenekleri
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Test Modu',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  Expanded(
                                    child: ChoiceChip(
                                      label: const Text('Free'),
                                      selected: _currentPlan == PlanType.free,
                                      onSelected: (s) async {
                                        if (!s) return;
                                        await _changePlan(PlanType.free);
                                      },
                                      backgroundColor: Colors.white.withValues(alpha: 0.1),
                                      selectedColor: Colors.blue.withValues(alpha: 0.3),
                                      labelStyle: GoogleFonts.poppins(
                                        color: _currentPlan == PlanType.free ? Colors.blue : Colors.white,
                                        fontWeight: _currentPlan == PlanType.free ? FontWeight.w600 : FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: ChoiceChip(
                                      label: const Text('Premium'),
                                      selected: _currentPlan == PlanType.premium,
                                      onSelected: (s) async {
                                        if (!s) return;
                                        await _changePlan(PlanType.premium);
                                      },
                                      backgroundColor: Colors.white.withOpacity(0.1),
                                      selectedColor: Colors.purple.withOpacity(0.3),
                                      labelStyle: GoogleFonts.poppins(
                                        color: _currentPlan == PlanType.premium ? Colors.purple : Colors.white,
                                        fontWeight: _currentPlan == PlanType.premium ? FontWeight.w600 : FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
