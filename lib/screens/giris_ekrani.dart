import 'package:flutter/material.dart';
import '../core/app_theme.dart';
import '../core/app_routes.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import '../core/reklam_servisi.dart';
import '../core/plan_manager.dart';
import '../l10n/app_localizations.dart';

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
    // Plan durumunu kontrol et
    final plan = await PlanManager.getPlan();

    // Premium kullanıcıysa reklam yükleme
    if (plan == PlanType.premium) {
      if (mounted) {
        setState(() {
          _bannerAdLoaded = false;
          _bannerAd = null;
        });
      }
      return;
    }

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
      // Reklam oluşturulamadıysa
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
        // Plan durumu yüklendikten sonra reklam durumunu güncelle
        _loadBannerAd();
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

        // Plan değiştiğinde reklam durumunu güncelle
        _loadBannerAd();
      }
    } catch (e) {
      // Plan değiştirme hatası - sessizce devam et
    }
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }





  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: AppTheme.backgroundDecoration,
        child: SafeArea(
          child: Column(
            children: [
              // Banner reklam
              if (_bannerAdLoaded && _bannerAd != null)
                SizedBox(
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
                        Image.asset(
                          'assets/icon.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          l10n.appTitle.toUpperCase(),
                          style: AppTheme.heading(fontSize: 34, fontWeight: FontWeight.w700, letterSpacing: 0.5),
                        ),
                        const SizedBox(height: 24),

                        // Mevcut Plan Göstergesi
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                          decoration: AppTheme.clayDecoration(
                            background: Colors.white,
                            borderColor: _currentPlan == PlanType.premium ? AppColors.secondary : AppColors.primary,
                            shadowColor: _currentPlan == PlanType.premium ? AppColors.secondaryDark : AppColors.primarySoft,
                            radius: 999,
                            borderWidth: 2.5,
                            shadowOffset: 4,
                          ),
                          child: Text(
                            _currentPlan == PlanType.premium
                                ? l10n.planPremiumActive
                                : l10n.planFree,
                            style: AppTheme.heading(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: _currentPlan == PlanType.premium ? AppColors.secondaryDark : AppColors.primary,
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 32),

                        // Oyuna Başla Butonu
                        _clayButton(
                          text: l10n.startGame,
                          background: Colors.white,
                          borderColor: AppColors.primary,
                          shadowColor: AppColors.primaryDark,
                          textColor: AppColors.primary,
                          icon: Icons.play_arrow_rounded,
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.kategoriler);
                          },
                        ),

                        const SizedBox(height: 18),

                        // Premium'a Geç Butonu (sadece free kullanıcılar için)
                        if (_currentPlan == PlanType.free)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 24),
                            child: _clayButton(
                              text: l10n.goPremium,
                              background: AppColors.secondary,
                              borderColor: AppColors.secondaryDark,
                              shadowColor: AppColors.secondaryDark,
                              textColor: Colors.white,
                              icon: Icons.workspace_premium,
                              onPressed: () async {
                                final bool? result = await Navigator.pushNamed<bool>(
                                  context,
                                  AppRoutes.premium,
                                );

                                // Premium satın alındıysa plan durumunu güncelle
                                if (result == true) {
                                  _loadPlanStatus();
                                }
                              },
                            ),
                          ),

                        // Test Modu Seçenekleri
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(16),
                          decoration: AppTheme.clayDecoration(
                            background: Colors.white,
                            borderColor: AppColors.primarySoft,
                            shadowColor: AppColors.primarySoft,
                            radius: 20,
                            borderWidth: 2.5,
                            shadowOffset: 4,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                l10n.testMode,
                                style: AppTheme.heading(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primary,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  Expanded(
                                    child: _clayChip(
                                      text: l10n.planFreeOption,
                                      selected: _currentPlan == PlanType.free,
                                      color: AppColors.primary,
                                      onTap: () => _changePlan(PlanType.free),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: _clayChip(
                                      text: l10n.planPremiumOption,
                                      selected: _currentPlan == PlanType.premium,
                                      color: AppColors.secondary,
                                      onTap: () => _changePlan(PlanType.premium),
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

  // Kil (clay) stilinde ana aksiyon butonu: kalın kenarlık + düz ofset gölge.
  Widget _clayButton({
    required String text,
    required Color background,
    required Color borderColor,
    required Color shadowColor,
    required Color textColor,
    required IconData icon,
    required VoidCallback? onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: Container(
        // Ink yerine düz Container + Material/InkWell kullanıyoruz: Ink,
        // dekorasyonunu en yakın ÜST Material'ın katmanına çiziyor; Scaffold
        // gibi kendi Material'ını sağlayan ataların altında bu, kil kenarlığın
        // yanlış konumda (örn. ekranın üstünde hayalet olarak) çizilmesine
        // yol açıyordu.
        decoration: AppTheme.clayDecoration(
          background: background,
          borderColor: borderColor,
          shadowColor: shadowColor,
          radius: 18,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(18),
            onTap: onPressed,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: textColor, size: 22),
                  const SizedBox(width: 8),
                  Text(text, style: AppTheme.heading(fontSize: 16, color: textColor)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Kil stilinde küçük seçim çipi (Free/Premium test modu).
  Widget _clayChip({
    required String text,
    required bool selected,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: AppTheme.clayDecoration(
            background: selected ? color : Colors.white,
            borderColor: color,
            shadowColor: selected ? color.withValues(alpha: 0.5) : AppColors.primarySoft,
            radius: 14,
            borderWidth: 2,
            shadowOffset: 3,
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: AppTheme.heading(
              fontSize: 13,
              color: selected ? Colors.white : color,
            ),
          ),
        ),
      ),
    );
  }
}
