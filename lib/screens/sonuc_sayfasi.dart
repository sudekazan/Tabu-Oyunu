import 'package:flutter/material.dart';
import '../core/app_theme.dart';
import '../core/app_routes.dart';

import 'package:confetti/confetti.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:math' show pi;

import 'ayarlar_screens.dart';
import 'giris_ekrani.dart';
import '../core/reklam_servisi.dart';


class SonucSayfasi extends StatefulWidget {
  final String takim1Adi;
  final String takim2Adi;
  final int takim1Skor;
  final int takim2Skor;

  const SonucSayfasi({
    super.key,
    required this.takim1Adi,
    required this.takim2Adi,
    required this.takim1Skor,
    required this.takim2Skor,
  });

  @override
  State<SonucSayfasi> createState() => _SonucSayfasiState();
}

class _SonucSayfasiState extends State<SonucSayfasi> {
  late ConfettiController _confettiController;

  BannerAd? _bannerAd;
  bool _bannerAdLoaded = false;
  
  String get kazananTakim {
    if (widget.takim1Skor > widget.takim2Skor) {
      return widget.takim1Adi;
    } else if (widget.takim2Skor > widget.takim1Skor) {
      return widget.takim2Adi;
    } else {
      return 'Beraberlik!';
    }
  }
  
  bool get beraberlik => widget.takim1Skor == widget.takim2Skor;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 3));

    // Banner reklam yükle
    _loadBannerAd();
    
    // Confetti'yi başlat
    Future.delayed(const Duration(milliseconds: 500), () {
      _confettiController.play();
    });
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
    _confettiController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final bool isCompact = screenSize.height < 720;
    return Scaffold(
      body: Container(
        decoration: AppTheme.backgroundDecoration,
        child: Stack(
          children: [
            // Confetti efekti
            Align(
              alignment: Alignment.topCenter,
              child: ConfettiWidget(
                confettiController: _confettiController,
                blastDirection: pi / 2,
                maxBlastForce: 5,
                minBlastForce: 2,
                emissionFrequency: 0.05,
                numberOfParticles: 50,
                gravity: 0.1,
                colors: const [
                  Colors.green,
                  Colors.blue,
                  Colors.pink,
                  Colors.orange,
                  Colors.purple,
                  Colors.red,
                  Colors.yellow,
                ],
              ),
            ),
            
            SafeArea(
              child: Column(
                children: [
                  // Banner reklam
                  if (_bannerAdLoaded && _bannerAd != null)
                    SizedBox(
                      width: _bannerAd!.size.width.toDouble(),
                      height: _bannerAd!.size.height.toDouble(),
                      child: AdWidget(ad: _bannerAd!),
                    ),
                  
                  // Üst Bar
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 22),
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                        ),
                        const SizedBox(width: 12),
                        Text('Oyun Sonucu', style: AppTheme.heading(fontSize: 20)),
                      ],
                    ),
                  ),
                  
                  Expanded(
                    child: Column(
                      children: [
                        // Kazanan Kutlaması (esnek küçük alan)
                        Flexible(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                            padding: EdgeInsets.all(isCompact ? 8 : 12),
                            decoration: AppTheme.clayDecoration(
                              background: Colors.white,
                              borderColor: beraberlik ? AppColors.primaryDark : const Color(0xFFCA8A04),
                              shadowColor: beraberlik ? AppColors.primaryDark : const Color(0xFFCA8A04),
                              radius: 24,
                              borderWidth: 3,
                              shadowOffset: 5,
                            ),
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      beraberlik ? Icons.handshake : Icons.emoji_events,
                                      size: isCompact ? 48 : 56,
                                      color: beraberlik ? AppColors.primary : const Color(0xFFCA8A04),
                                    ),
                                    SizedBox(height: isCompact ? 4 : 6),
                                    Text(
                                      beraberlik ? 'BERABERLİK!' : 'TEBRİKLER!',
                                      textAlign: TextAlign.center,
                                      style: AppTheme.heading(
                                        fontSize: isCompact ? 18 : 22,
                                        color: AppColors.primary,
                                        letterSpacing: 1.1,
                                      ),
                                    ),
                                    SizedBox(height: isCompact ? 4 : 6),
                                    Text(
                                      beraberlik ? 'Harika bir oyun oldu!' : '$kazananTakim kazandı!',
                                      textAlign: TextAlign.center,
                                      style: AppTheme.body(
                                        fontSize: isCompact ? 12 : 14,
                                        color: Colors.grey[700]!,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        // Skor Tablosu (daha geniş esnek alan)
                        Flexible(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                            decoration: AppTheme.clayDecoration(
                              background: Colors.white,
                              borderColor: AppColors.primaryDark,
                              shadowColor: AppColors.primaryDark,
                              radius: 24,
                              borderWidth: 3,
                              shadowOffset: 6,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(isCompact ? 12 : 14),
                                  decoration: BoxDecoration(
                                    color: AppColors.primary.withValues(alpha: 0.08),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(24),
                                      topRight: Radius.circular(24),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.leaderboard, color: AppColors.primary, size: isCompact ? 18 : 20),
                                      SizedBox(width: isCompact ? 6 : 8),
                                      Text(
                                        'Final Skorları',
                                        style: AppTheme.heading(fontSize: isCompact ? 18 : 19, color: AppColors.primary),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                   child: Padding(
                                    padding: EdgeInsets.all(isCompact ? 10 : 12),
                                     child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         _buildSkorKarti(
                                           widget.takim1Adi,
                                           widget.takim1Skor,
                                           widget.takim1Skor > widget.takim2Skor,
                                           AppColors.primary,
                                           compact: isCompact,
                                         ),
                                        SizedBox(height: isCompact ? 6 : 8),
                                        _buildSkorKarti(
                                           widget.takim2Adi,
                                           widget.takim2Skor,
                                           widget.takim2Skor > widget.takim1Skor,
                                           AppColors.secondary,
                                           compact: isCompact,
                                         ),
                                        SizedBox(height: isCompact ? 6 : 8),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: isCompact ? 10 : 12, vertical: isCompact ? 8 : 10),
                                           decoration: AppTheme.clayDecoration(
                                             background: AppColors.primarySoft,
                                             borderColor: AppColors.primary,
                                             shadowColor: AppColors.primary,
                                             radius: 16,
                                             borderWidth: 2,
                                             shadowOffset: 2,
                                           ),
                                           child: Row(
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             children: [
                                              Icon(Icons.star, color: Colors.amber[600], size: isCompact ? 16 : 18),
                                              SizedBox(width: isCompact ? 6 : 8),
                                               Text(
                                                 'Toplam Puan: ${widget.takim1Skor + widget.takim2Skor}',
                                                 style: AppTheme.heading(
                                                  fontSize: isCompact ? 13 : 14,
                                                   color: AppColors.primary,
                                                 ),
                                               ),
                                             ],
                                           ),
                                         ),
                                       ],
                                     ),
                                   ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  // Alt Butonlar
                  Container(
                    padding: EdgeInsets.all(isCompact ? 18 : 24),
                    child: Row(
                      children: [
                        // Yeniden Oyna
                        Expanded(
                          child: _clayFooterButton(
                            text: 'YENİDEN OYNA',
                            icon: Icons.replay,
                            background: Colors.white,
                            borderColor: AppColors.primaryDark,
                            textColor: AppColors.primary,
                            height: isCompact ? 48 : 56,
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                AppRoutes.slide(const AyarlarEkrani(), begin: AppRoutes.fromBottom),
                                (route) => false,
                              );
                            },
                          ),
                        ),

                        const SizedBox(width: 16),

                        // Çıkış
                        Expanded(
                          child: _clayFooterButton(
                            text: 'ÇIKIŞ',
                            icon: Icons.exit_to_app,
                            background: Colors.red[400]!,
                            borderColor: Colors.red[700]!,
                            textColor: Colors.white,
                            height: isCompact ? 48 : 56,
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                AppRoutes.slide(const GirisEkraniSayfasi(), begin: AppRoutes.fromBottom),
                                (route) => false,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSkorKarti(String takimAdi, int skor, bool kazandi, Color renk, {bool compact = false}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: compact ? 14 : 16, vertical: compact ? 12 : 14),
      decoration: kazandi
          ? AppTheme.clayDecoration(
              background: Colors.white,
              borderColor: renk,
              shadowColor: renk,
              radius: 16,
              borderWidth: 2.5,
              shadowOffset: 3,
            )
          : BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey[300]!, width: 2),
            ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(compact ? 8 : 10),
            decoration: BoxDecoration(
              color: kazandi ? renk : Colors.grey[400],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              kazandi ? Icons.emoji_events : Icons.groups,
              color: Colors.white,
              size: compact ? 20 : 22,
            ),
          ),

          SizedBox(width: compact ? 12 : 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  takimAdi,
                  style: AppTheme.heading(
                    fontSize: compact ? 16 : 17,
                    color: kazandi ? renk : Colors.grey[700]!,
                  ),
                ),
                Text(
                  '$skor puan',
                  style: AppTheme.body(
                    fontSize: compact ? 12 : 13,
                    color: kazandi ? renk.withValues(alpha: 0.8) : Colors.grey[600]!,
                  ),
                ),
              ],
            ),
          ),

          if (kazandi)
            Icon(
              Icons.celebration,
              color: renk,
              size: compact ? 24 : 28,
            ),
        ],
      ),
    );
  }

  // Alt butonlar için kil (clay) stilinde yardımcı: kalın kenarlık + düz
  // ofset gölge.
  Widget _clayFooterButton({
    required String text,
    required IconData icon,
    required Color background,
    required Color borderColor,
    required Color textColor,
    required double height,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      height: height,
      child: Container(
        // Ink yerine Container + Material/InkWell (ghost render sorunu
        // için bkz. yukarıdaki açıklama).
        decoration: AppTheme.clayDecoration(
          background: background,
          borderColor: borderColor,
          shadowColor: borderColor,
          radius: 16,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: onPressed,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, color: textColor, size: 22),
                  const SizedBox(width: 8),
                  Text(text, style: AppTheme.heading(fontSize: 15, color: textColor)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
