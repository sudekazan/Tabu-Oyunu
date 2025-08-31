import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'sonuc_sayfasi.dart';
import 'dart:async';
import 'ayarlar_screens.dart';
import '../data/kelimeler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/plan.dart';
import '../core/reklam_servisi.dart';
import '../data/free/free_kelimeler.dart';
import '../data/premium/premium_kelimeler.dart';
import '../data/premium/kategoriler/index.dart';
import '../data/free/kategoriler/cocuklar.dart';

class OyunSayfasi extends StatefulWidget {
  final String takim1Adi;
  final String takim2Adi;
  final int oyunSuresi;
  final int pasHakki;
  final int bitisPuani;

  const OyunSayfasi({
    super.key,
    required this.takim1Adi,
    required this.takim2Adi,
    required this.oyunSuresi,
    required this.pasHakki,
    required this.bitisPuani,
  });

  @override
  State<OyunSayfasi> createState() => _OyunSayfasiState();
}

class _OyunSayfasiState extends State<OyunSayfasi> with TickerProviderStateMixin {
  Timer? _timer;
  late int _kalanSure;
  late int _aktifTakimIndex;
  late int _takim1Skor;
  late int _takim2Skor;
  late int _takim1ToplamSkor;
  late int _takim2ToplamSkor;
  late int _kalanPasHakki;
  late bool _oyunAktif;
  final List<String> _turDogruKelimeler = [];
  final List<String> _turPasKelimeler = [];
  final Set<int> _kullanilanIndeksler = {};
  static const String _prefsUsedIndicesKey = 'kullanilan_indeksler';
  
  late AnimationController _pulseController;
  late AnimationController _shakeController;
  
  // Kelime havuzu (plan tipine göre Free/Premium)
  List<KelimeKarti> _kartlar = const [];
  
  int _mevcutKelimeIndex = 0;

  @override
  void initState() {
    super.initState();
    // Kelimeleri plan tipine göre yükle
    _yukleKelimeler();
    
    _kalanSure = widget.oyunSuresi;
    _aktifTakimIndex = 0;
    _takim1Skor = 0;
    _takim2Skor = 0;
    _takim1ToplamSkor = 0;
    _takim2ToplamSkor = 0;
          // Free kullanıcılar için sınırsız pas hakkı verilmesin
      if (widget.pasHakki >= 999999 && !_isPremiumUser) {
        _kalanPasHakki = 3; // Varsayılan pas hakkı
      } else {
        _kalanPasHakki = widget.pasHakki;
      }
    _oyunAktif = false;
    _yukleKullanilanIndeksler();
    
    // Yeni oyun başladığında pas hakkı reklamını sıfırla
    ReklamServisi.pasHakkiReklamSifirla();
    
    _pulseController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    
    _shakeController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    
    // Animasyon performansını optimize et
    _pulseController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _pulseController.reset();
      }
    });
    
    _shakeController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _shakeController.reset();
      }
    });
    
    // Plan kontrolü yap
    _checkPlan();
  }

  Future<void> _yukleKelimeler() async {
    final PlanType plan = await PlanManager.getPlan();
    List<KelimeKarti> liste;
    if (plan == PlanType.premium) {
      final bool useFree = await PlanCategories.getUseFreeSelection();
      if (useFree) {
        final FreeKategori freeCat = await PlanCategories.getSelectedFreeCategory();
        if (freeCat == FreeKategori.cocuklar) {
          liste = karisikFreeCocuklar();
        } else {
          liste = karisikFreeKelimeler();
        }
      } else {
        final Set<PremiumKategori> selected = await PlanCategories.getSelectedPremiumCategories();
        liste = selected.isNotEmpty
            ? karisikPremiumKategorilerinden(selected)
            : karisikPremiumKelimeler();
      }
    } else {
      final FreeKategori freeCat = await PlanCategories.getSelectedFreeCategory();
      if (freeCat == FreeKategori.cocuklar) {
        liste = karisikFreeCocuklar();
      } else {
        liste = karisikFreeKelimeler();
      }
    }
    if (mounted) {
      setState(() {
        _kartlar = liste;
        _mevcutKelimeIndex = 0;
      });
    }
  }

  Future<void> _yukleKullanilanIndeksler() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String>? stored = prefs.getStringList(_prefsUsedIndicesKey);
    final Set<int> loaded = {};
    if (stored != null) {
      for (final String s in stored) {
        final int? val = int.tryParse(s);
        if (val != null) loaded.add(val);
      }
    }
    setState(() {
      _kullanilanIndeksler.clear();
      _kullanilanIndeksler.addAll(loaded);
      _mevcutKelimeIndex = 0;
    });
  }

  Future<void> _kaydetKullanilanIndeksler() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(
      _prefsUsedIndicesKey,
      _kullanilanIndeksler.map((e) => e.toString()).toList(),
    );
  }
  
  // Responsive tasarım için ekran boyutlarını al
  Size get _screenSize => MediaQuery.of(context).size;
  double get _screenWidth => _screenSize.width;
  double get _screenHeight => _screenSize.height;
  bool get _isSmallScreen => _screenWidth < 360;
  bool get _isMediumScreen => _screenWidth >= 360 && _screenWidth < 600;
  bool get _isLargeScreen => _screenWidth >= 600;
  
  // Responsive padding ve margin değerleri
  EdgeInsets get _responsivePadding => EdgeInsets.symmetric(
    horizontal: _isSmallScreen ? 12.0 : _isMediumScreen ? 16.0 : 20.0,
    vertical: _isSmallScreen ? 8.0 : _isMediumScreen ? 12.0 : 16.0,
  );
  
  // Responsive font boyutları
  double get _titleFontSize => _isSmallScreen ? 16.0 : _isMediumScreen ? 18.0 : 20.0;
  double get _subtitleFontSize => _isSmallScreen ? 14.0 : _isMediumScreen ? 16.0 : 18.0;
  double get _bodyFontSize => _isSmallScreen ? 12.0 : _isMediumScreen ? 14.0 : 16.0;
  bool get _isUnlimitedPass => widget.pasHakki >= 999999;
  
  // Plan kontrolü için ayrı bir değişken
  bool _isPremiumUser = false;
  
  // Reklam izleme durumu için değişken
  bool _reklamIzlenmeyiBekliyor = false;
  
  // Plan kontrolü yap
  Future<void> _checkPlan() async {
    final PlanType plan = await PlanManager.getPlan();
    if (mounted) {
              setState(() {
          _isPremiumUser = plan == PlanType.premium;
          
          // Free kullanıcılar için sınırsız pas hakkı verilmesin
          if (widget.pasHakki >= 999999 && plan == PlanType.free) {
            _kalanPasHakki = 3; // Varsayılan pas hakkı
          }
          
          // Plan değiştiğinde sadece premium kontrolü yap
        });
    }
  }
  
  // Cihaz boyutuna orantılı sabit font (kelime uzunluğundan bağımsız)
  double _getKelimeFontSize(String kelime) {
    final double baseFactor = _isSmallScreen ? 0.11 : _isMediumScreen ? 0.12 : 0.13;
    double baseSize = _screenHeight * baseFactor;
    return baseSize.clamp(36.0, 76.0);
  }

  @override
  void dispose() {
    _timer?.cancel();
    
    // Animasyon controller'ları güvenli şekilde dispose et
    if (_pulseController.isAnimating) {
      _pulseController.stop();
    }
    _pulseController.dispose();
    
    if (_shakeController.isAnimating) {
      _shakeController.stop();
    }
    _shakeController.dispose();
    
    super.dispose();
  }

  void _oyunuBaslat() {
    setState(() {
      _oyunAktif = true;
      _turDogruKelimeler.clear();
      _turPasKelimeler.clear();
    });
    // İlk kelimeyi kullanılmış olarak işaretle
    _kullanilanIndeksler.add(_mevcutKelimeIndex);
    _kaydetKullanilanIndeksler();
    _baslatTimer();
  }

  void _baslatTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_kalanSure > 0) {
        setState(() => _kalanSure--);
      } else {
        _turBitir();
      }
    });
  }

  void _turBitir() {
    _timer?.cancel();
    setState(() => _oyunAktif = false);
    
    // Premium kullanıcılar için ödüllü reklam yok
    if (_isPremiumUser) {
      setState(() {
        _reklamIzlenmeyiBekliyor = false;
      });
      _gosterTurSonuSheet();
      return;
    }
    
    // Eğer reklam izleme bekleniyorsa, önce reklamı göster
    if (_reklamIzlenmeyiBekliyor) {
      _showOdulluReklam().then((_) {
        _gosterTurSonuSheet();
      });
    } else {
      _gosterTurSonuSheet();
    }
  }

  void _oyunuBitir() async {
    _timer?.cancel();
    setState(() {
      _oyunAktif = false;
    });
    // Toplam skorlar tur içinde anlık güncellendiği için burada ekleme yapılmıyor
    
    // Free kullanıcılar için oyun bitiminde interstitial reklam göster
    final plan = await PlanManager.getPlan();
    if (plan == PlanType.free) {
      final interstitialAd = await ReklamServisi.createTamSayfaReklam();
      if (interstitialAd != null) {
        interstitialAd.fullScreenContentCallback = FullScreenContentCallback(
          onAdDismissedFullScreenContent: (ad) {
            ad.dispose();
            _navigateToResult();
          },
          onAdFailedToShowFullScreenContent: (ad, error) {
            ad.dispose();
            _navigateToResult();
          },
        );
        await interstitialAd.show();
      } else {
        _navigateToResult();
      }
    } else {
      _navigateToResult();
    }
  }

  void _navigateToResult() {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            SonucSayfasi(
          takim1Adi: widget.takim1Adi,
          takim2Adi: widget.takim2Adi,
          takim1Skor: _takim1ToplamSkor,
          takim2Skor: _takim2ToplamSkor,
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        },
      ),
    );
  }

  // Yeni oyun için skorları sıfırla ve kelimeleri yeniden karıştır
  void _yeniOyunBaslat() {
    setState(() {
      // Kelimeleri plan tipine göre yeniden yükle
      
      _takim1Skor = 0;
      _takim2Skor = 0;
      // Toplam skorları sıfırlama; önceki turların puanları korunsun
      _aktifTakimIndex = 0;
      _kalanSure = widget.oyunSuresi;
      // Free kullanıcılar için sınırsız pas hakkı verilmesin
      if (widget.pasHakki >= 999999 && !_isPremiumUser) {
        _kalanPasHakki = 3; // Varsayılan pas hakkı
      } else {
        _kalanPasHakki = widget.pasHakki;
      }
      _oyunAktif = false;
      _turDogruKelimeler.clear();
      _turPasKelimeler.clear();
      // Yeni oyunda da daha önce gelen kelimeleri koru
      _mevcutKelimeIndex = 0;
    });
    _yukleKelimeler();
  }

  void _dogruCevap() {
    setState(() {
      _turDogruKelimeler.add(_kartlar[_mevcutKelimeIndex].kelime);
      if (_aktifTakimIndex == 0) {
        _takim1Skor++;
        _takim1ToplamSkor++; // Doğru cevap toplam skora anlık yansısın
      } else {
        _takim2Skor++;
        _takim2ToplamSkor++; // Doğru cevap toplam skora anlık yansısın
      }
      
      if (_takim1Skor >= widget.bitisPuani || _takim2Skor >= widget.bitisPuani) {
        _oyunuBitir();
        return;
      }
      
      _sonrakiKelime();
    });
    
    _pulseController.forward().then((_) => _pulseController.reset());
  }

  void _pas() {
    // Free kullanıcılar için sınırsız pas kontrolü
    if (_isUnlimitedPass && !_isPremiumUser) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Sınırsız pas sadece premium kullanıcılar için!'),
          backgroundColor: Colors.orange,
          duration: Duration(seconds: 3),
        ),
      );
      return;
    }
    
    // Premium kullanıcılar için sınırsız pas
    if (_isPremiumUser && _isUnlimitedPass) {
      setState(() {
        _turPasKelimeler.add(_kartlar[_mevcutKelimeIndex].kelime);
        _sonrakiKelime();
      });
      return;
    }
    
    if (_kalanPasHakki > 0) {
      // Normal pas hakkı kullan
      setState(() {
        _kalanPasHakki--;
        _turPasKelimeler.add(_kartlar[_mevcutKelimeIndex].kelime);
        _sonrakiKelime();
      });
    } else {
      // Premium kullanıcılar için ödüllü reklam yok
      if (_isPremiumUser) {
        return;
      }
      
      // Pas hakkı bitti, reklam izleme durumunu kontrol et
      if (_reklamIzlenmeyiBekliyor) {
        // Zaten reklam izleme bekleniyor, hiçbir şey yapma
        return;
      }
      
      // İlk kez ekstra pas hakkı isteniyor
      setState(() {
        _kalanPasHakki = 1; // 1 ekstra pas hakkı ver
        _reklamIzlenmeyiBekliyor = true; // Reklam izleme durumunu işaretle
        _turPasKelimeler.add(_kartlar[_mevcutKelimeIndex].kelime);
        _sonrakiKelime();
      });
    }
  }
  
  // Ödüllü reklam göster
  Future<void> _showOdulluReklam() async {
    // Premium kullanıcılar için ödüllü reklam yok
    if (_isPremiumUser) {
      setState(() {
        _reklamIzlenmeyiBekliyor = false;
      });
      return;
    }
    
    // Daha önce reklam izlenip izlenmediğini kontrol et
    final reklamKullanildi = await ReklamServisi.pasHakkiReklamKullanildiMi();
    
    if (reklamKullanildi) {
      // Reklam zaten kullanılmış, reklam izleme durumunu sıfırla
      setState(() {
        _reklamIzlenmeyiBekliyor = false;
      });
      return;
    }
    
    // Ödüllü reklam yükle
    final rewardedAd = await ReklamServisi.createOdulluReklam();
    
    if (rewardedAd != null) {
      rewardedAd.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          ad.dispose();
          // Reklam gösterilemezse reklam izleme durumunu sıfırla
          setState(() {
            _reklamIzlenmeyiBekliyor = false;
          });
        },
      );
      
      // Reklam callback'lerini ayarla
      rewardedAd.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          ad.dispose();
        },
      );
      
      // Ödül callback'ini ayarla - güncel SDK'da onUserEarnedReward parametresi kullanılıyor
      await rewardedAd.show(
        onUserEarnedReward: (ad, reward) {
          setState(() {
            _reklamIzlenmeyiBekliyor = false; // Reklam izleme durumunu sıfırla
            // Ekstra pas hakkı zaten verilmiş, burada tekrar verilmez
          });
          
          // Reklam kullanıldı olarak işaretle
          ReklamServisi.pasHakkiReklamKullanildi();
          
          ad.dispose();
        },
      );
    } else {
      // Reklam yüklenemezse reklam izleme durumunu sıfırla
      setState(() {
        _reklamIzlenmeyiBekliyor = false;
      });
    }
  }

  void _tabu() {
    setState(() {
      if (_aktifTakimIndex == 0) {
        _takim1Skor -= 1;
        _takim1ToplamSkor -= 1; // Ceza toplam skora da yansısın
      } else {
        _takim2Skor -= 1;
        _takim2ToplamSkor -= 1; // Ceza toplam skora da yansısın
      }
      _sonrakiKelime();
    });
    _shakeController.forward().then((_) => _shakeController.reset());
  }

  void _sonrakiKelime() async {
    int nextIndex = _mevcutKelimeIndex;
    bool found = false;
    for (int i = 0; i < _kartlar.length; i++) {
      nextIndex = (nextIndex + 1) % _kartlar.length;
      if (!_kullanilanIndeksler.contains(nextIndex)) {
        found = true;
        break;
      }
    }
    if (!found) {
      // Tüm kelimeler en az bir kez kullanıldı; seti temizleyip sıradakine geç
      _kullanilanIndeksler.clear();
      await _kaydetKullanilanIndeksler();
      nextIndex = (_mevcutKelimeIndex + 1) % _kartlar.length;
    }
    setState(() {
      _mevcutKelimeIndex = nextIndex;
      _kullanilanIndeksler.add(_mevcutKelimeIndex);
      // Süre ve pas hakkı tur boyunca korunur; burada sıfırlama yapmayız.
    });
    _kaydetKullanilanIndeksler();
  }

  void _takimDegistir() {
    setState(() {
      _aktifTakimIndex = (_aktifTakimIndex + 1) % 2;
      _kalanSure = widget.oyunSuresi;
      // Free kullanıcılar için sınırsız pas hakkı verilmesin
      if (widget.pasHakki >= 999999 && !_isPremiumUser) {
        _kalanPasHakki = 3; // Varsayılan pas hakkı
      } else {
        _kalanPasHakki = widget.pasHakki;
      }
      _turDogruKelimeler.clear();
      _turPasKelimeler.clear();
      // Takım değiştiğinde kelimeyi de değiştir
      _sonrakiKelime();
    });
  }

  void _gosterTurSonuSheet() {
    final String oynayanTakim = _aktifTakimIndex == 0 ? widget.takim1Adi : widget.takim2Adi;
    final String digerTakim = _aktifTakimIndex == 0 ? widget.takim2Adi : widget.takim1Adi;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      isDismissible: false,
      enableDrag: false,
      builder: (context) {
        return Container(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: SafeArea(
            top: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 48,
                    height: 4,
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                Text('Tur Bitti', style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w700, color: const Color(0xFF6A1B9A))),
                const SizedBox(height: 6),
                Text('$oynayanTakim turu tamamladı. Mevcut skorlar:', style: GoogleFonts.poppins(fontSize: 14, color: Colors.grey[700])),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(child: _buildSkorKarti(widget.takim1Adi, _takim1Skor, _takim1ToplamSkor, _aktifTakimIndex == 0)),
                    const SizedBox(width: 10),
                    Expanded(child: _buildSkorKarti(widget.takim2Adi, _takim2Skor, _takim2ToplamSkor, _aktifTakimIndex == 1)),
                  ],
                ),
                const SizedBox(height: 12),
                if (_turDogruKelimeler.isNotEmpty) ...[
                  Text('Doğru Bilinenler', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.green[700])),
                  const SizedBox(height: 6),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: _turDogruKelimeler.map((k) => Chip(label: Text(k, style: GoogleFonts.poppins()), backgroundColor: Colors.green.shade50)).toList(),
                  ),
                  const SizedBox(height: 12),
                ],
                if (_turPasKelimeler.isNotEmpty) ...[
                  Text('Pas Geçilenler', style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.orange[800])),
                  const SizedBox(height: 6),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: _turPasKelimeler.map((k) => Chip(label: Text(k, style: GoogleFonts.poppins()), backgroundColor: Colors.orange.shade50)).toList(),
                  ),
                  const SizedBox(height: 12),
                ],
                const SizedBox(height: 4),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                      _sirayiDigerTakimaBaslat();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6A1B9A),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    ),
                    icon: const Icon(Icons.swap_horiz),
                    label: Text('Diğer Takım Başlasın', style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _sirayiDigerTakimaBaslat() {
    // Biten turun skorunu ilgili takıma ekle ve skoru sıfırla
    setState(() {
      // Toplam skor tur içinde anlık güncellendiği için sadece tur skorunu sıfırla
      if (_aktifTakimIndex == 0) {
        _takim1Skor = 0;
      } else {
        _takim2Skor = 0;
      }

      // Sırayı diğer takıma ver
      _aktifTakimIndex = (_aktifTakimIndex + 1) % 2;

      // Yeni turun ayarlarını sıfırla
      _kalanSure = widget.oyunSuresi;
      // Free kullanıcılar için sınırsız pas hakkı verilmesin
      if (widget.pasHakki >= 999999 && !_isPremiumUser) {
        _kalanPasHakki = 3; // Varsayılan pas hakkı
      } else {
        _kalanPasHakki = widget.pasHakki;
      }
      _turDogruKelimeler.clear();
      _turPasKelimeler.clear();

      // Sonraki kelimeyle başla
      _sonrakiKelime();
    });

    // Yeni turu başlat
    _oyunuBaslat();
  }

  @override
  Widget build(BuildContext context) {
    Future<bool> _onWillPop() async {
      // Oyun başlamadıysa: varsa geri git; yoksa ayarlara yönlendir
      if (!_oyunAktif) {
        if (Navigator.of(context).canPop()) return true;
        Navigator.of(context).pushReplacement(PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const AyarlarEkrani(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero).animate(animation),
              child: child,
            );
          },
        ));
        return false;
      }
      // Oyun devam ediyorsa onay iste
      final bool? confirm = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: const Text('Oyundan çıkılsın mı?'),
          content: const Text('Oyun devam ediyor. Çıkarsanız mevcut tur sonlanacak.'),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Vazgeç')),
            ElevatedButton(onPressed: () => Navigator.pop(context, true), child: const Text('Çık')),
          ],
        ),
      );
      if (confirm == true) {
        _timer?.cancel();
        if (Navigator.of(context).canPop()) return true;
        Navigator.of(context).pushReplacement(PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const AyarlarEkrani(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(begin: const Offset(-1, 0), end: Offset.zero).animate(animation),
              child: child,
            );
          },
        ));
      }
      return false;
    }

    Future<void> _onBackPressed() async {
      final shouldPop = await _onWillPop();
      if (shouldPop && Navigator.of(context).canPop()) {
        Navigator.of(context).pop();
      }
    }

    final aktifTakimAdi = _aktifTakimIndex == 0 ? widget.takim1Adi : widget.takim2Adi;
    final aktifTakimSkor = _aktifTakimIndex == 0 ? _takim1Skor : _takim2Skor;
    final aktifTakimToplamSkor = _aktifTakimIndex == 0 ? _takim1ToplamSkor : _takim2ToplamSkor;
    
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (!didPop) {
          final shouldPop = await _onWillPop();
          if (shouldPop && context.mounted) {
            Navigator.of(context).pop();
          }
        }
      },
      child: Scaffold(
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
              // Üst Bar - Skorlar ve sağ üstte süre
              Container(
                padding: _responsivePadding,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: _onBackPressed,
                      icon: Icon(Icons.arrow_back, 
                        color: Colors.white, 
                        size: _isSmallScreen ? 20 : _isMediumScreen ? 22 : 24
                      ),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                    SizedBox(width: _isSmallScreen ? 2 : 4),
                    Expanded(
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: _buildSkorKarti(
                              widget.takim1Adi,
                              _takim1Skor,
                              _takim1ToplamSkor,
                              _aktifTakimIndex == 0,
                            ),
                          ),
                          SizedBox(width: _isSmallScreen ? 6 : 8),
                          Expanded(
                            child: _buildSkorKarti(
                              widget.takim2Adi,
                              _takim2Skor,
                              _takim2ToplamSkor,
                              _aktifTakimIndex == 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: _isSmallScreen ? 2 : 4),
                    _buildSureKarti(),
                  ],
                ),
              ),
              
              // Ana Oyun Alanı
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                    _isSmallScreen ? 12 : _isMediumScreen ? 16 : 20, 
                    4, 
                    _isSmallScreen ? 12 : _isMediumScreen ? 16 : 20, 
                    8
                  ),
                  child: Column(
                    children: [
                      // Aktif Takım Bilgisi
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: _isSmallScreen ? 12 : _isMediumScreen ? 16 : 20, 
                          vertical: _isSmallScreen ? 6 : _isMediumScreen ? 8 : 10
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(_isSmallScreen ? 16 : 20),
                          border: Border.all(color: Colors.white.withOpacity(0.3)),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Sıra: $aktifTakimAdi',
                                style: GoogleFonts.poppins(
                                  fontSize: _isSmallScreen ? 14 : _isMediumScreen ? 16 : 17,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            _buildInfoPill(
                              icon: Icons.emoji_events,
                              text: 'Tur: $aktifTakimSkor',
                            ),
                            SizedBox(width: _isSmallScreen ? 6 : 8),
                            _buildInfoPill(
                              icon: Icons.skip_next,
                              text: 'Pas: ' + (_isUnlimitedPass && _isPremiumUser ? 'Sınırsız' : '$_kalanPasHakki'),
                            ),
                          ],
                        ),
                      ),
                        
                      SizedBox(height: _isSmallScreen ? 6 : 8),
                        
                      // Ana Kelime
                      if (_kartlar.isEmpty)
                        const Expanded(
                          child: Center(child: CircularProgressIndicator(color: Colors.white)),
                        )
                      else
                      Flexible(
                        fit: FlexFit.loose,
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(
                            _isSmallScreen ? 8 : _isMediumScreen ? 12 : 16, // yatay padding azaltıldı (sol)
                            _isSmallScreen ? 6 : _isMediumScreen ? 8 : 10,
                            _isSmallScreen ? 8 : _isMediumScreen ? 12 : 16, // yatay padding azaltıldı (sağ)
                            _isSmallScreen ? 4 : _isMediumScreen ? 6 : 8, // alttan biraz kısalt
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(_isSmallScreen ? 20 : _isMediumScreen ? 24 : 28),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                blurRadius: _isSmallScreen ? 20 : _isMediumScreen ? 24 : 28,
                                offset: Offset(0, _isSmallScreen ? 8 : _isMediumScreen ? 10 : 12),
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Ana kelime alanı
                              Padding(
                                padding: EdgeInsets.only(top: _isSmallScreen ? 2 : _isMediumScreen ? 3 : 4),
                                child: Center(
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      _kartlar[_mevcutKelimeIndex].kelime,
                                      key: ValueKey(_mevcutKelimeIndex),
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        fontSize: _getKelimeFontSize(_kartlar[_mevcutKelimeIndex].kelime),
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xFF6A1B9A),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: _isSmallScreen ? 2 : _isMediumScreen ? 3 : 4),
                              // Tabu kelimeler
                              Expanded(
                                flex: 5, // toplam yüksekliği biraz azalt
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: _kartlar[_mevcutKelimeIndex].yasakliKelimeler
                                      .map<Widget>((kelime) => Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.symmetric(
                                              vertical: _isSmallScreen ? 3 : _isMediumScreen ? 4 : 5, // büyük font için margin artırıldı
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: _isSmallScreen ? 12 : _isMediumScreen ? 14 : 16,
                                              vertical: _isSmallScreen ? 5 : _isMediumScreen ? 6 : 8, // büyük font için padding artırıldı
                                            ),
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [Colors.red.shade400, Colors.red.shade700],
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.red.shade700.withOpacity(0.2),
                                                  blurRadius: 6,
                                                  offset: const Offset(0, 3),
                                                ),
                                              ],
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            alignment: Alignment.center,
                                                                                          child: Text(
                                                kelime,
                                                style: GoogleFonts.poppins(
                                                  fontSize: _isSmallScreen ? 24 : _isMediumScreen ? 26 : 28,
                                                  fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ))
                                      .toList(),
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
              
              // Alt Butonlar
              Container(
                padding: EdgeInsets.fromLTRB(
                  _isSmallScreen ? 12 : _isMediumScreen ? 16 : 20,
                  _isSmallScreen ? 8 : _isMediumScreen ? 12 : 16,
                  _isSmallScreen ? 12 : _isMediumScreen ? 16 : 20,
                  _isSmallScreen ? 12 : _isMediumScreen ? 16 : 20
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: _buildGradientActionButton(
                        text: 'TABU',
                        icon: Icons.block,
                        colors: [const Color(0xFF6A1B9A), const Color(0xFF8E24AA)],
                        onPressed: _oyunAktif ? _tabu : null,
                      ),
                    ),
                    SizedBox(width: _isSmallScreen ? 8 : _isMediumScreen ? 12 : 16),
                    Expanded(
                      child: Column(
                        children: [
                          _buildGradientActionButton(
                            text: (_kalanPasHakki > 0 && !_reklamIzlenmeyiBekliyor) ? 'PAS' : 'PAS +1',
                            icon: _kalanPasHakki > 0 ? Icons.skip_next : Icons.play_circle,
                            colors: (_kalanPasHakki > 0 && !_reklamIzlenmeyiBekliyor)
                              ? [const Color(0xFFFFA726), const Color(0xFFF57C00)]
                              : _reklamIzlenmeyiBekliyor 
                                ? [Colors.grey.withOpacity(0.5), Colors.grey.withOpacity(0.3)]
                                : [const Color(0xFF4CAF50), const Color(0xFF2E7D32)],
                            onPressed: (_oyunAktif && !_reklamIzlenmeyiBekliyor) ? _pas : null,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: _isSmallScreen ? 8 : _isMediumScreen ? 12 : 16),
                    Expanded(
                      child: _buildGradientActionButton(
                        text: 'DOĞRU',
                        icon: Icons.check_circle,
                        colors: [const Color(0xFF34D399), const Color(0xFF059669)],
                        onPressed: _oyunAktif ? _dogruCevap : null,
                      ),
                    ),
                  ],
                ),
              ),
        
            ],
          ),
        ),
      ),
      floatingActionButton: _oyunAktif ? null : FloatingActionButton.extended(
        onPressed: _oyunuBaslat,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF6A1B9A),
        icon: Icon(Icons.play_arrow, 
          size: _isSmallScreen ? 20 : _isMediumScreen ? 22 : 24
        ),
        label: Text(
          'OYUNU BAŞLAT',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: _isSmallScreen ? 13 : _isMediumScreen ? 14 : 15,
          ),
        ),
      ),
    ));
  }

  Widget _buildSkorKarti(String takimAdi, int skor, int toplamSkor, bool aktif) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _isSmallScreen ? 10 : _isMediumScreen ? 12 : 14,
        vertical: _isSmallScreen ? 5 : _isMediumScreen ? 6 : 8
      ),
      decoration: BoxDecoration(
        color: aktif ? Colors.white.withOpacity(0.3) : Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(_isSmallScreen ? 18 : _isMediumScreen ? 20 : 22),
        border: aktif ? Border.all(color: Colors.white, width: _isSmallScreen ? 1.5 : 2) : null,
      ),
      child: Column(
        children: [
          Text(
            takimAdi,
            style: GoogleFonts.poppins(
              fontSize: _isSmallScreen ? 10 : _isMediumScreen ? 11 : 12,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          // Üstte büyük rakam toplam puan olsun
          Text(
            '$toplamSkor',
            style: GoogleFonts.poppins(
              fontSize: _isSmallScreen ? 18 : _isMediumScreen ? 20 : 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          // Altta tur puanını küçük göster
          Text(
            'Tur: $skor',
            style: GoogleFonts.poppins(
              fontSize: _isSmallScreen ? 8 : _isMediumScreen ? 9 : 10,
              fontWeight: FontWeight.w500,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSureKarti() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _isSmallScreen ? 16 : _isMediumScreen ? 18 : 20,
        vertical: _isSmallScreen ? 10 : _isMediumScreen ? 11 : 12
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.circular(_isSmallScreen ? 18 : _isMediumScreen ? 20 : 22),
        border: Border.all(color: Colors.white.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          Icon(
            Icons.timer,
            color: Colors.white,
            size: _isSmallScreen ? 20 : _isMediumScreen ? 22 : 24,
          ),
          SizedBox(height: _isSmallScreen ? 3 : 4),
          Text(
            '$_kalanSure',
            style: GoogleFonts.poppins(
              fontSize: _isSmallScreen ? 20 : _isMediumScreen ? 22 : 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoPill({required IconData icon, required String text}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _isSmallScreen ? 6 : _isMediumScreen ? 7 : 8,
        vertical: _isSmallScreen ? 3 : _isMediumScreen ? 3.5 : 4
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.18),
        borderRadius: BorderRadius.circular(_isSmallScreen ? 12 : _isMediumScreen ? 13 : 14),
        border: Border.all(color: Colors.white.withOpacity(0.25)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, 
            color: Colors.white, 
            size: _isSmallScreen ? 12 : _isMediumScreen ? 13 : 14
          ),
          SizedBox(width: _isSmallScreen ? 4 : _isMediumScreen ? 4.5 : 5),
          Text(
            text,
            style: GoogleFonts.poppins(
              color: Colors.white, 
              fontSize: _isSmallScreen ? 10 : _isMediumScreen ? 10.5 : 11, 
              fontWeight: FontWeight.w600
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGradientActionButton({
    required String text,
    required IconData icon,
    required List<Color> colors,
    required VoidCallback? onPressed,
  }) {
    return Opacity(
      opacity: onPressed == null ? 0.6 : 1,
      child: Container(
        height: _isSmallScreen ? 56 : _isMediumScreen ? 60 : 64,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: colors),
          borderRadius: BorderRadius.circular(_isSmallScreen ? 14 : _isMediumScreen ? 15 : 16),
          boxShadow: [
            BoxShadow(
              color: colors.last.withOpacity(0.35),
              blurRadius: _isSmallScreen ? 14 : _isMediumScreen ? 15 : 16,
              offset: Offset(0, _isSmallScreen ? 6 : _isMediumScreen ? 7 : 8),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
                  child: InkWell(
          borderRadius: BorderRadius.circular(_isSmallScreen ? 14 : _isMediumScreen ? 15 : 16),
          onTap: onPressed,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icon, 
                    color: Colors.white, 
                    size: _isSmallScreen ? 20 : _isMediumScreen ? 22 : 24
                  ),
                  SizedBox(width: _isSmallScreen ? 6 : _isMediumScreen ? 7 : 8),
                  Text(
                    text,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: _isSmallScreen ? 14 : _isMediumScreen ? 15 : 16,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


