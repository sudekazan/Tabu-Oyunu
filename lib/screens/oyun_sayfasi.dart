import 'package:flutter/material.dart';
import '../core/app_theme.dart';
import '../core/app_routes.dart';
import '../core/game_engine.dart';

import 'sonuc_sayfasi.dart';
import 'dart:async';
import 'ayarlar_screens.dart';
import '../data/kelimeler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../core/plan_manager.dart';
import '../core/reklam_servisi.dart';
import '../data/kelime_deposu.dart';
import '../data/premium/kategoriler/index.dart';

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
  late bool _oyunAktif;

  // Skor, kelime döngüsü ve pas hakkı mantığı artık GameEngine'de; bu sınıf
  // sadece UI, zamanlayıcı, animasyon ve reklam/dialog orkestrasyonundan
  // sorumlu. Aşağıdaki getter'lar build() ve diğer UI kodu hiç değişmeden
  // çalışabilsin diye engine'e yönlendirme yapıyor.
  late GameEngine _engine;
  List<KelimeKarti> get _kartlar => _engine.kartlar;
  int get _mevcutKelimeIndex => _engine.mevcutKelimeIndex;
  int get _aktifTakimIndex => _engine.aktifTakimIndex;
  int get _takim1Skor => _engine.takim1Skor;
  int get _takim2Skor => _engine.takim2Skor;
  int get _takim1ToplamSkor => _engine.takim1ToplamSkor;
  int get _takim2ToplamSkor => _engine.takim2ToplamSkor;
  int get _kalanPasHakki => _engine.kalanPasHakki;
  List<String> get _turDogruKelimeler => _engine.turDogruKelimeler;
  List<String> get _turPasKelimeler => _engine.turPasKelimeler;
  Set<int> get _kullanilanIndeksler => _engine.kullanilanIndeksler;

  static const String _prefsUsedIndicesKey = 'kullanilan_indeksler';
  // Kelime listesi plan/kategoriye göre değiştiği için "kullanılmış kelime"
  // takibi de aynı kategoriye özel bir anahtar altında saklanmalı; aksi halde
  // kategori değiştirildiğinde eski index'ler yeni listeye yanlış eşleniyordu.
  String _kelimeKategoriKey = 'free_havuz';
  String get _usedIndicesPrefsKey => '$_prefsUsedIndicesKey:$_kelimeKategoriKey';

  late AnimationController _pulseController;
  late AnimationController _shakeController;

  @override
  void initState() {
    super.initState();
    // Free kullanıcılar için sınırsız pas hakkı verilmesin
    final int baslangicPasHakki = (widget.pasHakki >= 999999 && !_isPremiumUser) ? 3 : widget.pasHakki;
    _engine = GameEngine(
      takim1Adi: widget.takim1Adi,
      takim2Adi: widget.takim2Adi,
      oyunSuresi: widget.oyunSuresi,
      bitisPuani: widget.bitisPuani,
      baslangicPasHakki: baslangicPasHakki,
    );

    // Kelimeleri plan tipine göre yükle
    _yukleKelimeler();

    _kalanSure = widget.oyunSuresi;
    _oyunAktif = false;

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
    String kategoriKey;
    if (plan == PlanType.premium) {
      final bool useFree = await PlanCategories.getUseFreeSelection();
      if (useFree) {
        final FreeKategori freeCat = await PlanCategories.getSelectedFreeCategory();
        if (freeCat == FreeKategori.cocuklar) {
          liste = await karisikFreeCocuklar();
          kategoriKey = 'free_cocuklar';
        } else {
          liste = await karisikFreeKelimeler();
          kategoriKey = 'free_havuz';
        }
      } else {
        final Set<PremiumKategori> selected = await PlanCategories.getSelectedPremiumCategories();
        if (selected.isNotEmpty) {
          liste = await karisikPremiumKategorilerinden(selected);
          final List<String> adlar = selected.map((k) => k.toString()).toList()..sort();
          kategoriKey = 'premium_${adlar.join('_')}';
        } else {
          liste = await karisikPremiumHavuz(); // Premium havuz için sadece premium kelimeler
          kategoriKey = 'premium_havuz';
        }
      }
    } else {
      final FreeKategori freeCat = await PlanCategories.getSelectedFreeCategory();
      if (freeCat == FreeKategori.cocuklar) {
        liste = await karisikFreeCocuklar();
        kategoriKey = 'free_cocuklar';
      } else {
        liste = await karisikFreeKelimeler();
        kategoriKey = 'free_havuz';
      }
    }
    _kelimeKategoriKey = kategoriKey;
    // Kullanılmış kelime indeksleri kategoriye özel olduğu için kelime listesiyle
    // birlikte yüklenmeli; aksi halde farklı kategorilerin indeksleri karışır.
    await _yukleKullanilanIndeksler();
    if (mounted) {
      setState(() {
        _engine.kartlariDegistir(liste);
      });
    }
  }

  Future<void> _yukleKullanilanIndeksler() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String>? stored = prefs.getStringList(_usedIndicesPrefsKey);
    final Set<int> loaded = {};
    if (stored != null) {
      for (final String s in stored) {
        final int? val = int.tryParse(s);
        if (val != null) loaded.add(val);
      }
    }
    if (!mounted) return;
    setState(() {
      _engine.kullanilanIndeksler.clear();
      _engine.kullanilanIndeksler.addAll(loaded);
      _engine.mevcutKelimeIndex = 0;
    });
  }

  Future<void> _kaydetKullanilanIndeksler() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(
      _usedIndicesPrefsKey,
      _kullanilanIndeksler.map((e) => e.toString()).toList(),
    );
  }
  
  // Responsive tasarım için ekran boyutlarını al
  Size get _screenSize => MediaQuery.of(context).size;
  double get _screenWidth => _screenSize.width;
  double get _screenHeight => _screenSize.height;
  bool get _isSmallScreen => _screenWidth < 360;
  bool get _isMediumScreen => _screenWidth >= 360 && _screenWidth < 600;

  // Responsive padding ve margin değerleri
  EdgeInsets get _responsivePadding => EdgeInsets.symmetric(
    horizontal: _isSmallScreen ? 12.0 : _isMediumScreen ? 16.0 : 20.0,
    vertical: _isSmallScreen ? 8.0 : _isMediumScreen ? 12.0 : 16.0,
  );
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
          _engine.kalanPasHakki = 3; // Varsayılan pas hakkı
        }
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
      // İlk kelimeyi kullanılmış olarak işaretle
      _engine.ilkKelimeyiIsaretle();
    });
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

    // Free kullanıcılar için oyun bitiminde interstitial reklam göster, sonra sonuç ekranına geç
    await ReklamServisi.tamSayfaReklamGosterVeDevamEt(() async {
      _navigateToResult();
    });
  }

  void _navigateToResult() {
    Navigator.of(context).pushReplacement(
      AppRoutes.slide(
        SonucSayfasi(
          takim1Adi: widget.takim1Adi,
          takim2Adi: widget.takim2Adi,
          takim1Skor: _takim1ToplamSkor,
          takim2Skor: _takim2ToplamSkor,
        ),
      ),
    );
  }

  void _dogruCevap() {
    // GameEngine.dogruCevapVer, bitiş puanının turun kendi skoruna değil
    // oyun boyunca biriken toplam skora göre kontrol edilmesini sağlıyor;
    // aksi halde oyun ancak bir takım tek bir turda bitiş puanına ulaşırsa
    // sona ererdi.
    bool oyunBitti = false;
    setState(() {
      oyunBitti = _engine.dogruCevapVer();
    });
    if (oyunBitti) {
      _oyunuBitir();
      return;
    }
    _kaydetKullanilanIndeksler();
    _pulseController.forward().then((_) => _pulseController.reset());
  }

  void _pas() async {
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
        _engine.sinirsizPasKullan();
      });
      _kaydetKullanilanIndeksler();
      return;
    }

    if (_engine.pasHakkiVarMi) {
      // Normal pas hakkı kullan
      setState(() {
        _engine.pasKullan();
      });
      _kaydetKullanilanIndeksler();
      return;
    }

    // Premium kullanıcılar için ödüllü reklam yok
    if (_isPremiumUser) {
      return;
    }

    // Pas hakkı bitti, reklam izleme durumunu kontrol et
    if (_reklamIzlenmeyiBekliyor) {
      // Zaten reklam izleme bekleniyor, hiçbir şey yapma
      return;
    }

    // İlk kez ekstra pas hakkı isteniyor: butona basınca sürpriz bir şekilde
    // reklam moduna geçmek yerine önce kullanıcıya ne olacağını açıklayalım.
    final bool? reklamIzlemekIstiyor = await _showEkstraPasOnayi();
    if (reklamIzlemekIstiyor != true || !mounted) return;

    setState(() {
      _reklamIzlenmeyiBekliyor = true; // Reklam izleme durumunu işaretle
      _engine.ekstraPasHakkiVer(); // 1 ekstra pas hakkı ver
    });
    _kaydetKullanilanIndeksler();
  }

  // Pas hakkı bittiğinde ekstra pas için reklam izlemeyi onaylatan diyalog.
  // Reklamın kendisi turun sonunda gösterilir; burada sadece kullanıcıyı
  // önceden bilgilendiriyoruz ("PAS +1" butonuna basınca aniden reklam
  // moduna geçilmesi kafa karıştırıcıydı).
  Future<bool?> _showEkstraPasOnayi() {
    return showDialog<bool>(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: AppTheme.clayDecoration(
            background: AppColors.primary,
            borderColor: AppColors.primaryDark,
            shadowColor: AppColors.primaryDark,
            radius: 24,
            borderWidth: 4,
            shadowOffset: 8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.play_circle, color: Colors.white, size: 32),
              ),
              const SizedBox(height: 16),
              Text(
                'Pas hakkın bitti',
                style: AppTheme.heading(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                'Bu tur sonunda kısa bir reklam izleyerek 1 ekstra pas hakkı kazanabilirsin.',
                style: AppTheme.body(fontSize: 15, color: Colors.white.withValues(alpha: 0.9)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () => Navigator.pop(context, false),
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                      child: Text('Vazgeç', style: AppTheme.heading(fontSize: 15)),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Material(
                      color: Colors.transparent,
                      child: Ink(
                        decoration: AppTheme.clayDecoration(
                          background: Colors.white,
                          borderColor: AppColors.primaryDark,
                          shadowColor: AppColors.primaryDark,
                          radius: 12,
                          borderWidth: 2.5,
                          shadowOffset: 3,
                        ),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () => Navigator.pop(context, true),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Center(
                              child: Text('Reklamı İzle', style: AppTheme.heading(fontSize: 14, color: AppColors.primary)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  // Ödüllü reklam göster
  Future<void> _showOdulluReklam() async {
    // Ekstra pas hakkı zaten _pas() içinde verilmişti; burada sadece reklamı
    // gösterip "reklam izleme bekleniyor" bayrağını kapatıyoruz.
    await ReklamServisi.pasIcinOdulluReklamGoster();
    if (mounted) {
      setState(() {
        _reklamIzlenmeyiBekliyor = false;
      });
    }
  }

  void _tabu() {
    setState(() {
      _engine.tabuCezasiUygula();
    });
    _kaydetKullanilanIndeksler();
    _shakeController.forward().then((_) => _shakeController.reset());
  }

  void _gosterTurSonuSheet() {
    final String oynayanTakim = _aktifTakimIndex == 0 ? widget.takim1Adi : widget.takim2Adi;
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
                Text('Tur Bitti', style: AppTheme.heading(fontSize: 20, color: AppColors.primary)),
                const SizedBox(height: 3),
                Text('$oynayanTakim turu tamamladı. Mevcut skorlar:', style: AppTheme.body(fontSize: 14, color: Colors.grey[700]!)),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Expanded(child: _buildSkorKarti(widget.takim1Adi, _takim1Skor, _takim1ToplamSkor, _aktifTakimIndex == 0)),
                    const SizedBox(width: 10),
                    Expanded(child: _buildSkorKarti(widget.takim2Adi, _takim2Skor, _takim2ToplamSkor, _aktifTakimIndex == 1)),
                  ],
                ),
                const SizedBox(height: 6),
                if (_turDogruKelimeler.isNotEmpty) ...[
                  Text('Doğru Bilinenler', style: AppTheme.heading(fontSize: 16, color: Colors.green[700]!)),
                  const SizedBox(height: 6),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: _turDogruKelimeler.map((k) => Chip(
                      label: Text(k, style: AppTheme.body(color: Colors.green.shade800)),
                      backgroundColor: Colors.green.shade50,
                      side: BorderSide(color: Colors.green.shade300, width: 2),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    )).toList(),
                  ),
                  const SizedBox(height: 6),
                ],
                if (_turPasKelimeler.isNotEmpty) ...[
                  Text('Pas Geçilenler', style: AppTheme.heading(fontSize: 16, color: Colors.orange[800]!)),
                  const SizedBox(height: 6),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: _turPasKelimeler.map((k) => Chip(
                      label: Text(k, style: AppTheme.body(color: Colors.orange.shade800)),
                      backgroundColor: Colors.orange.shade50,
                      side: BorderSide(color: Colors.orange.shade300, width: 2),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    )).toList(),
                  ),
                  const SizedBox(height: 6),
                ],
                const SizedBox(height: 2),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: Material(
                    color: Colors.transparent,
                    child: Ink(
                      decoration: AppTheme.clayDecoration(
                        background: AppColors.primary,
                        borderColor: AppColors.primaryDark,
                        shadowColor: AppColors.primaryDark,
                        radius: 16,
                      ),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16),
                        onTap: () {
                          Navigator.of(context).pop();
                          _sirayiDigerTakimaBaslat();
                        },
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.swap_horiz, color: Colors.white),
                              const SizedBox(width: 8),
                              Text('Diğer Takım Başlasın', style: AppTheme.heading(fontSize: 15)),
                            ],
                          ),
                        ),
                      ),
                    ),
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
    setState(() {
      // Toplam skor tur içinde anlık güncellendiği için biten turun sadece
      // tur skorunu sıfırla (aktif takım henüz değişmeden, yani biten takım
      // için).
      _engine.turSkorunuSifirla();

      // Yeni turun ayarlarını sıfırla; sırayı diğer takıma ver.
      _kalanSure = widget.oyunSuresi;
      // Free kullanıcılar için sınırsız pas hakkı verilmesin
      final int yeniPasHakki = (widget.pasHakki >= 999999 && !_isPremiumUser) ? 3 : widget.pasHakki;
      _engine.yeniTurAyarlariniUygula(pasHakki: yeniPasHakki, sirayiDegistir: true);

      // Sonraki kelimeyle başla
      _engine.sonrakiKelime();
    });
    _kaydetKullanilanIndeksler();

    // Yeni turu başlat
    _oyunuBaslat();
  }

  @override
  Widget build(BuildContext context) {
    Future<bool> _onWillPop() async {
      // Oyun başlamadıysa: varsa geri git; yoksa ayarlara yönlendir
      if (!_oyunAktif) {
        if (Navigator.of(context).canPop()) return true;
        Navigator.of(context).pushReplacement(
          AppRoutes.slide(const AyarlarEkrani(), begin: AppRoutes.fromLeft),
        );
        return false;
      }
      // Oyun devam ediyorsa onay iste
      final bool? confirm = await showDialog<bool>(
        context: context,
        barrierDismissible: false,
        builder: (context) => Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: AppTheme.clayDecoration(
              background: AppColors.primary,
              borderColor: AppColors.primaryDark,
              shadowColor: AppColors.primaryDark,
              radius: 24,
              borderWidth: 4,
              shadowOffset: 8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // İkon
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.2),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                const SizedBox(height: 16),

                // Başlık
                Text(
                  'Oyundan çıkılsın mı?',
                  style: AppTheme.heading(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),

                // İçerik
                Text(
                  'Oyun devam ediyor. Çıkarsanız mevcut tur sonlanacak.',
                  style: AppTheme.body(fontSize: 15, color: Colors.white.withValues(alpha: 0.9)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),

                // Butonlar
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () => Navigator.pop(context, false),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: const BorderSide(color: Colors.white, width: 1.5),
                          ),
                        ),
                        child: Text('Vazgeç', style: AppTheme.heading(fontSize: 15)),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Material(
                        color: Colors.transparent,
                        child: Ink(
                          decoration: AppTheme.clayDecoration(
                            background: Colors.white,
                            borderColor: AppColors.primaryDark,
                            shadowColor: AppColors.primaryDark,
                            radius: 12,
                            borderWidth: 2.5,
                            shadowOffset: 3,
                          ),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(12),
                            onTap: () => Navigator.pop(context, true),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: Center(
                                child: Text('Çık', style: AppTheme.heading(fontSize: 15, color: AppColors.primary)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
      if (confirm == true) {
        _timer?.cancel();
        if (Navigator.of(context).canPop()) return true;
        Navigator.of(context).pushReplacement(
          AppRoutes.slide(const AyarlarEkrani(), begin: AppRoutes.fromLeft),
        );
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
        decoration: AppTheme.backgroundDecoration,
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
                        decoration: AppTheme.clayDecoration(
                          background: Colors.white,
                          borderColor: AppColors.primaryDark,
                          shadowColor: AppColors.primaryDark,
                          radius: _isSmallScreen ? 16 : 20,
                          borderWidth: 2.5,
                          shadowOffset: 4,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Sıra: $aktifTakimAdi',
                                style: AppTheme.heading(
                                  fontSize: _isSmallScreen ? 14 : _isMediumScreen ? 16 : 17,
                                  color: AppColors.primary,
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
                          decoration: AppTheme.clayDecoration(
                            background: Colors.white,
                            borderColor: AppColors.primaryDark,
                            shadowColor: AppColors.primaryDark,
                            radius: _isSmallScreen ? 20 : _isMediumScreen ? 24 : 28,
                            borderWidth: 4,
                            shadowOffset: _isSmallScreen ? 8 : _isMediumScreen ? 9 : 10,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Ana kelime alanı
                              Padding(
                                padding: EdgeInsets.only(top: _isSmallScreen ? 2 : _isMediumScreen ? 3 : 4),
                                child: Center(
                                  child: LayoutBuilder(
                                    builder: (context, constraints) {
                                      // Uzun kelimeler (örn. "Beyin Omurilik Sıvısı") tek satıra
                                      // sıkıştırılınca FittedBox fontu aşırı küçültüyordu. Metni
                                      // önce mevcut genişlikte 2 satıra sarmasına izin veriyoruz,
                                      // FittedBox da ortaya çıkan bloğu gerektiği kadar ölçekliyor.
                                      return FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: SizedBox(
                                          width: constraints.maxWidth,
                                          child: Text(
                                            _kartlar[_mevcutKelimeIndex].kelime,
                                            key: ValueKey(_mevcutKelimeIndex),
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: AppTheme.heading(
                                              fontSize: _getKelimeFontSize(_kartlar[_mevcutKelimeIndex].kelime),
                                              color: AppColors.primary,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
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
                                            decoration: AppTheme.clayDecoration(
                                              background: Colors.red.shade400,
                                              borderColor: Colors.red.shade700,
                                              shadowColor: Colors.red.shade700,
                                              radius: 12,
                                              borderWidth: 2.5,
                                              shadowOffset: 3,
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              kelime,
                                              style: AppTheme.heading(
                                                fontSize: _isSmallScreen ? 24 : _isMediumScreen ? 26 : 28,
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
                      child: _buildClayActionButton(
                        text: 'TABU',
                        icon: Icons.block,
                        background: const Color(0xFF8E24AA),
                        borderColor: AppColors.primary,
                        onPressed: _oyunAktif ? _tabu : null,
                      ),
                    ),
                    SizedBox(width: _isSmallScreen ? 8 : _isMediumScreen ? 12 : 16),
                    Expanded(
                      child: Column(
                        children: [
                          _buildClayActionButton(
                            text: (_kalanPasHakki > 0 && !_reklamIzlenmeyiBekliyor) ? 'PAS' : 'PAS +1',
                            icon: _kalanPasHakki > 0 ? Icons.skip_next : Icons.play_circle,
                            background: (_kalanPasHakki > 0 && !_reklamIzlenmeyiBekliyor)
                              ? const Color(0xFFFFA726)
                              : _reklamIzlenmeyiBekliyor
                                ? Colors.grey.shade300
                                : const Color(0xFF4CAF50),
                            borderColor: (_kalanPasHakki > 0 && !_reklamIzlenmeyiBekliyor)
                              ? const Color(0xFFF57C00)
                              : _reklamIzlenmeyiBekliyor
                                ? Colors.grey.shade500
                                : const Color(0xFF2E7D32),
                            onPressed: (_oyunAktif && !_reklamIzlenmeyiBekliyor) ? _pas : null,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: _isSmallScreen ? 8 : _isMediumScreen ? 12 : 16),
                    Expanded(
                      child: _buildClayActionButton(
                        text: 'DOĞRU',
                        icon: Icons.check_circle,
                        background: const Color(0xFF34D399),
                        borderColor: const Color(0xFF059669),
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
        foregroundColor: AppColors.primary,
        shape: StadiumBorder(side: BorderSide(color: AppColors.primaryDark, width: 2.5)),
        icon: Icon(Icons.play_arrow,
          size: _isSmallScreen ? 20 : _isMediumScreen ? 22 : 24
        ),
        label: Text(
          'OYUNU BAŞLAT',
          style: AppTheme.heading(
            fontSize: _isSmallScreen ? 13 : _isMediumScreen ? 14 : 15,
            color: AppColors.primary,
          ),
        ),
      ),
    ));
  }

  Widget _buildSkorKarti(String takimAdi, int skor, int toplamSkor, bool aktif) {
    final double radius = _isSmallScreen ? 18 : _isMediumScreen ? 20 : 22;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _isSmallScreen ? 10 : _isMediumScreen ? 12 : 14,
        vertical: _isSmallScreen ? 5 : _isMediumScreen ? 6 : 8
      ),
      decoration: aktif
          ? AppTheme.clayDecoration(
              background: Colors.white,
              borderColor: AppColors.primaryDark,
              shadowColor: AppColors.primaryDark,
              radius: radius,
              borderWidth: 2,
              shadowOffset: 3,
            )
          : BoxDecoration(
              color: Colors.white.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(radius),
              border: Border.all(color: Colors.white.withValues(alpha: 0.3), width: 2),
            ),
      child: Column(
        children: [
          Text(
            takimAdi,
            style: AppTheme.body(
              fontSize: _isSmallScreen ? 10 : _isMediumScreen ? 11 : 12,
              fontWeight: FontWeight.w700,
              color: aktif ? AppColors.primary : Colors.white,
            ),
          ),
          // Üstte büyük rakam toplam puan olsun
          Text(
            '$toplamSkor',
            style: AppTheme.heading(
              fontSize: _isSmallScreen ? 18 : _isMediumScreen ? 20 : 22,
              color: aktif ? AppColors.primary : Colors.white,
            ),
          ),
          // Altta tur puanını küçük göster
          Text(
            'Tur: $skor',
            style: AppTheme.body(
              fontSize: _isSmallScreen ? 8 : _isMediumScreen ? 9 : 10,
              fontWeight: FontWeight.w600,
              color: aktif ? AppColors.primary.withValues(alpha: 0.7) : Colors.white.withValues(alpha: 0.8),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSureKarti() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _isSmallScreen ? 14 : _isMediumScreen ? 16 : 18,
        vertical: _isSmallScreen ? 10 : _isMediumScreen ? 11 : 12
      ),
      decoration: AppTheme.clayDecoration(
        background: AppColors.secondary,
        borderColor: AppColors.secondaryDark,
        shadowColor: AppColors.secondaryDark,
        radius: _isSmallScreen ? 18 : _isMediumScreen ? 20 : 22,
        shadowOffset: 4,
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
            style: AppTheme.heading(fontSize: _isSmallScreen ? 20 : _isMediumScreen ? 22 : 24),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoPill({required IconData icon, required String text}) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: _isSmallScreen ? 7 : _isMediumScreen ? 8 : 9,
        vertical: _isSmallScreen ? 4 : _isMediumScreen ? 4.5 : 5
      ),
      decoration: AppTheme.clayDecoration(
        background: Colors.white,
        borderColor: AppColors.primarySoft,
        shadowColor: AppColors.primarySoft,
        radius: _isSmallScreen ? 12 : _isMediumScreen ? 13 : 14,
        borderWidth: 2,
        shadowOffset: 2,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon,
            color: AppColors.primary,
            size: _isSmallScreen ? 12 : _isMediumScreen ? 13 : 14
          ),
          SizedBox(width: _isSmallScreen ? 4 : _isMediumScreen ? 4.5 : 5),
          Text(
            text,
            style: AppTheme.body(
              color: AppColors.primary,
              fontSize: _isSmallScreen ? 10 : _isMediumScreen ? 10.5 : 11,
              fontWeight: FontWeight.w700
            ),
          ),
        ],
      ),
    );
  }

  // Kil (clay) stilinde ana aksiyon butonu: düz dolgu rengi + kalın koyu
  // kenarlık + düz ofset gölge (önceden gradient + bulanık gölgeydi).
  Widget _buildClayActionButton({
    required String text,
    required IconData icon,
    required Color background,
    required Color borderColor,
    required VoidCallback? onPressed,
  }) {
    final double radius = _isSmallScreen ? 14 : _isMediumScreen ? 15 : 16;
    return Opacity(
      opacity: onPressed == null ? 0.6 : 1,
      child: Container(
        height: _isSmallScreen ? 56 : _isMediumScreen ? 60 : 64,
        decoration: AppTheme.clayDecoration(
          background: background,
          borderColor: borderColor,
          shadowColor: borderColor,
          radius: radius,
          shadowOffset: _isSmallScreen ? 4 : 5,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(radius),
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
                    style: AppTheme.heading(
                      fontSize: _isSmallScreen ? 14 : _isMediumScreen ? 15 : 16,
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


