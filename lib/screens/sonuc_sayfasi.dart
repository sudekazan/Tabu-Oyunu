import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    final Size _screenSize = MediaQuery.of(context).size;
    final bool _isCompact = _screenSize.height < 720;
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
                    Container(
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
                        Text(
                          'Oyun Sonucu',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
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
                            padding: EdgeInsets.all(_isCompact ? 8 : 12),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.2),
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
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
                                      size: _isCompact ? 48 : 56,
                                      color: Colors.yellow[400],
                                    ),
                                    SizedBox(height: _isCompact ? 4 : 6),
                                    Text(
                                      beraberlik ? 'BERABERLİK!' : 'TEBRİKLER!',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: _isCompact ? 18 : 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        letterSpacing: 1.1,
                                      ),
                                    ),
                                    SizedBox(height: _isCompact ? 4 : 6),
                                    Text(
                                      beraberlik ? 'Harika bir oyun oldu!' : '$kazananTakim kazandı!',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: _isCompact ? 12 : 14,
                                        color: Colors.white.withValues(alpha: 0.9),
                                        height: 1.2,
                                        fontWeight: FontWeight.w500,
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
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.1),
                                  blurRadius: 20,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(_isCompact ? 12 : 14),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF6A1B9A).withValues(alpha: 0.08),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(24),
                                      topRight: Radius.circular(24),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.leaderboard, color: const Color(0xFF6A1B9A), size: _isCompact ? 18 : 20),
                                      SizedBox(width: _isCompact ? 6 : 8),
                                      Text(
                                        'Final Skorları',
                                        style: GoogleFonts.poppins(
                                          fontSize: _isCompact ? 18 : 19,
                                          fontWeight: FontWeight.bold,
                                          color: const Color(0xFF6A1B9A),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                   child: Padding(
                                    padding: EdgeInsets.all(_isCompact ? 10 : 12),
                                     child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         _buildSkorKarti(
                                           widget.takim1Adi,
                                           widget.takim1Skor,
                                           widget.takim1Skor > widget.takim2Skor,
                                           const Color(0xFF6A1B9A),
                                           compact: _isCompact,
                                         ),
                                        SizedBox(height: _isCompact ? 6 : 8),
                                        _buildSkorKarti(
                                           widget.takim2Adi,
                                           widget.takim2Skor,
                                           widget.takim2Skor > widget.takim1Skor,
                                           const Color(0xFFFF7043),
                                           compact: _isCompact,
                                         ),
                                        SizedBox(height: _isCompact ? 6 : 8),
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: _isCompact ? 10 : 12, vertical: _isCompact ? 8 : 10),
                                           decoration: BoxDecoration(
                                             color: Colors.grey[100],
                                             borderRadius: BorderRadius.circular(16),
                                             border: Border.all(color: Colors.grey[300]!),
                                           ),
                                           child: Row(
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             children: [
                                              Icon(Icons.star, color: Colors.amber[600], size: _isCompact ? 16 : 18),
                                              SizedBox(width: _isCompact ? 6 : 8),
                                               Text(
                                                 'Toplam Puan: ${widget.takim1Skor + widget.takim2Skor}',
                                                 style: GoogleFonts.poppins(
                                                  fontSize: _isCompact ? 13 : 14,
                                                   fontWeight: FontWeight.w600,
                                                   color: Colors.grey[700],
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
                    padding: EdgeInsets.all(_isCompact ? 18 : 24),
                    child: Row(
                      children: [
                        // Yeniden Oyna
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) =>
                                      const AyarlarEkrani(),
                                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                    return SlideTransition(
                                      position: Tween<Offset>(
                                        begin: const Offset(0.0, 1.0),
                                        end: Offset.zero,
                                      ).animate(animation),
                                      child: child,
                                    );
                                  },
                                ),
                                (route) => false,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: const Color(0xFF6A1B9A),
                              elevation: 8,
                              shadowColor: Colors.black26,
                              padding: EdgeInsets.symmetric(vertical: _isCompact ? 12 : 16),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.replay, size: 24),
                                const SizedBox(width: 8),
                                Text(
                                  'YENİDEN OYNA',
                                  style: GoogleFonts.poppins(
                                    fontSize: _isCompact ? 15 : 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        const SizedBox(width: 16),
                        
                        // Çıkış
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                PageRouteBuilder(
                                  pageBuilder: (context, animation, secondaryAnimation) =>
                                      const GirisEkraniSayfasi(),
                                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                    return SlideTransition(
                                      position: Tween<Offset>(
                                        begin: const Offset(0.0, 1.0),
                                        end: Offset.zero,
                                      ).animate(animation),
                                      child: child,
                                    );
                                  },
                                ),
                                (route) => false,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red[400],
                              foregroundColor: Colors.white,
                              elevation: 8,
                              shadowColor: Colors.red[400]!.withValues(alpha: 0.4),
                              padding: EdgeInsets.symmetric(vertical: _isCompact ? 12 : 16),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.exit_to_app, size: 24),
                                const SizedBox(width: 8),
                                Text(
                                  'ÇIKIŞ',
                                  style: GoogleFonts.poppins(
                                    fontSize: _isCompact ? 15 : 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
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
      decoration: BoxDecoration(
        color: kazandi ? renk.withValues(alpha: 0.1) : Colors.grey[50],
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: kazandi ? renk : Colors.grey[300]!,
          width: kazandi ? 2 : 1,
        ),
        boxShadow: kazandi ? [
          BoxShadow(
            color: renk.withValues(alpha: 0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ] : null,
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
                  style: GoogleFonts.poppins(
                    fontSize: compact ? 16 : 17,
                    fontWeight: FontWeight.w600,
                    color: kazandi ? renk : Colors.grey[700],
                  ),
                ),
                Text(
                  '$skor puan',
                  style: GoogleFonts.poppins(
                    fontSize: compact ? 12 : 13,
                    color: kazandi ? renk.withValues(alpha: 0.8) : Colors.grey[600],
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
}
